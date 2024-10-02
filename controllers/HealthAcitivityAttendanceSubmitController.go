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

type HealthAcitivityAttendanceSubmitController struct {
	DB *sql.DB
}

func NewHealthAcitivityAttendanceSubmitController(db *sql.DB) (*HealthAcitivityAttendanceSubmitController, error) {
	return &HealthAcitivityAttendanceSubmitController{DB: db}, nil
}

func (ac *HealthAcitivityAttendanceSubmitController) AttendanceSubmit(w http.ResponseWriter, r *http.Request) {
	if r.Method != http.MethodPost {
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

	// Parse the token
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

	healthActivityTrackerModel := models.HealthAcitivityAttendanceSubmitModel{Db: ac.DB}

	err = r.ParseMultipartForm(-1)
	if err != nil {
		http.Error(w, "Unable to parse multipart form: "+err.Error(), http.StatusBadRequest)
		return
	}

	userID := r.FormValue("user_id")
	if userID == "" {
		http.Error(w, "user id field is required", http.StatusBadRequest)
		return
	}

	activitiID := r.FormValue("activity_id")
	if activitiID == "" {
		http.Error(w, "activity id field is required", http.StatusBadRequest)
		return
	}

	latitude := r.FormValue("latitude")
	if latitude == "" {
		http.Error(w, "latitude field is required", http.StatusBadRequest)
		return
	}

	longitude := r.FormValue("longitude")
	if longitude == "" {
		http.Error(w, "user id field is required", http.StatusBadRequest)
		return
	}

	postActivityAttendance := &entities.PostActivityAttendance{
		UserID:     userID,
		ActivitiID: activitiID,
		Latitude:   latitude,
		Longitude:  longitude,
	}

	_, err = healthActivityTrackerModel.AddActivityAttendance(postActivityAttendance)
	if err != nil {
		http.Error(w, "Failed to update name: "+err.Error(), http.StatusInternalServerError)
		return
	}

	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
	json.NewEncoder(w).Encode(map[string]string{"status": "success"})
}
