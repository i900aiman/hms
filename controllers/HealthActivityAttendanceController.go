package controllers

import (
	"database/sql"
	"encoding/json"
	"hhms-api/common"
	"hhms-api/entities"
	"hhms-api/models"
	"net/http"

	"github.com/golang-jwt/jwt/v5"
)

type HealthAcitivityAttendanceController struct {
	DB *sql.DB
}

func NewHealthAcitivityAttendanceController(db *sql.DB) (*HealthAcitivityAttendanceController, error) {
	return &HealthAcitivityAttendanceController{DB: db}, nil
}

func (sc *HealthAcitivityAttendanceController) HealthAcitivityAttendance(w http.ResponseWriter, r *http.Request) {
	if r.Method != http.MethodGet {
		http.Error(w, "Invalid request method", http.StatusMethodNotAllowed)
		return
	}

	tokenStr := r.Header.Get("Authorization")
	if tokenStr == "" {
		response := entities.APIResponse{
			Status:  http.StatusUnauthorized,
			Message: "Authorization token is required",
		}
		w.Header().Set("Content-Type", "application/json")
		w.WriteHeader(http.StatusUnauthorized)
		json.NewEncoder(w).Encode(response)
		return
	}

	api := &common.Api{}
	token, err := jwt.ParseWithClaims(tokenStr[len("Bearer "):], api, func(token *jwt.Token) (interface{}, error) {
		return common.JwtKey, nil
	})

	if err != nil || !token.Valid {
		response := entities.APIResponse{
			Status:  http.StatusUnauthorized,
			Message: "Invalid authorization token",
		}
		w.Header().Set("Content-Type", "application/json")
		w.WriteHeader(http.StatusUnauthorized)
		json.NewEncoder(w).Encode(response)
		return
	}

	healthActivityAttendanceModel := models.HealthAcitivityAttendanceModel{
		Db: sc.DB,
	}

	results, err := healthActivityAttendanceModel.GetHealthAcitivityAttendance()
	if err != nil {
		response := entities.APIResponse{
			Status:  http.StatusInternalServerError,
			Message: "Error fetching Program results: " + err.Error(),
		}
		w.Header().Set("Content-Type", "application/json")
		w.WriteHeader(http.StatusInternalServerError)
		json.NewEncoder(w).Encode(response)
		return
	}

	response := entities.APIResponse{
		Data:    results,
		Status:  http.StatusOK,
		Message: "Program results fetched successfully",
	}
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
	json.NewEncoder(w).Encode(response)

}
