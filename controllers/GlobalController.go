package controllers

import (
	"database/sql"
	"encoding/json"
	"fmt"
	"hhms-api/common"
	"hhms-api/entities"
	"hhms-api/models"
	"net/http"
	"time"

	"github.com/golang-jwt/jwt/v5"
)

type GlobalController struct {
	DB *sql.DB
}

func NewGlobalController(db *sql.DB) (*GlobalController, error) {
	return &GlobalController{DB: db}, nil
}

func (gc *GlobalController) Login(w http.ResponseWriter, r *http.Request) {
	if r.Method != http.MethodPost {
		response := entities.APIResponse{
			Status:  http.StatusMethodNotAllowed,
			Message: "Invalid request method",
		}
		w.Header().Set("Content-Type", "application/json")
		w.WriteHeader(http.StatusMethodNotAllowed)
		json.NewEncoder(w).Encode(response)
		return
	}

	err := r.ParseMultipartForm(10 << 20) // 10 MB
	if err != nil {
		response := entities.APIResponse{
			Status:  http.StatusBadRequest,
			Message: "Unable to parse form: " + err.Error(),
		}
		w.Header().Set("Content-Type", "application/json")
		w.WriteHeader(http.StatusBadRequest)
		json.NewEncoder(w).Encode(response)
		return
	}

	email := r.FormValue("email")
	password := r.FormValue("password")
	if email == "" || password == "" {
		response := entities.APIResponse{
			Status:  http.StatusBadRequest,
			Message: "Invalid input",
		}
		w.Header().Set("Content-Type", "application/json")
		w.WriteHeader(http.StatusBadRequest)
		json.NewEncoder(w).Encode(response)
		return
	}

	globalModel := models.GlobalModel{Db: gc.DB}
	user, err := globalModel.Login(email, password)
	if err != nil {
		response := entities.APIResponse{
			Status:  http.StatusUnauthorized,
			Message: "Invalid login credentials",
		}
		w.Header().Set("Content-Type", "application/json")
		w.WriteHeader(http.StatusUnauthorized)
		json.NewEncoder(w).Encode(response)
		return
	}

	expirationTime := time.Now().Add(24 * time.Hour)
	api := &common.Api{
		Id:    user.Id,
		Email: user.Email,
		Name:  user.Name,
		RegisteredClaims: jwt.RegisteredClaims{
			ExpiresAt: jwt.NewNumericDate(expirationTime),
		},
	}

	token := jwt.NewWithClaims(jwt.SigningMethodHS256, api)
	tokenString, err := token.SignedString(common.JwtKey)
	if err != nil {
		response := entities.APIResponse{
			Status:  http.StatusInternalServerError,
			Message: "Error generating token: " + err.Error(),
		}
		w.Header().Set("Content-Type", "application/json")
		w.WriteHeader(http.StatusInternalServerError)
		json.NewEncoder(w).Encode(response)
		return
	}

	// Properly set Name and Id in the response
	response := entities.APIResponse{
		Data: map[string]string{
			"token": tokenString,
			"email": user.Email,
			"name":  user.Name,
			"id":    fmt.Sprintf("%d", user.Id), // Ensure Id is a string
		},
		Status:  http.StatusOK,
		Message: "Login successful",
	}
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
	json.NewEncoder(w).Encode(response)
}

func (gc *GlobalController) Program(w http.ResponseWriter, r *http.Request) {
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

	globalModel := models.GlobalModel{
		Db: gc.DB,
	}

	results, err := globalModel.GetProgram()
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

func (gc *GlobalController) GetGender(w http.ResponseWriter, r *http.Request) {
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

	globalModel := models.GlobalModel{
		Db: gc.DB,
	}

	results, err := globalModel.GetGenderById(api.Id)
	if err != nil {
		response := entities.APIResponse{
			Status:  http.StatusInternalServerError,
			Message: "Error fetching Name: " + err.Error(),
		}
		w.Header().Set("Content-Type", "application/json")
		w.WriteHeader(http.StatusInternalServerError)
		json.NewEncoder(w).Encode(response)
		return
	}

	response := entities.APIResponse{
		Data:    results,
		Status:  http.StatusOK,
		Message: "Name fetched successfully",
	}
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
	json.NewEncoder(w).Encode(response)
}
