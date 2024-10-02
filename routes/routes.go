package routes

import (
	"hhms-api/configuration"
	"hhms-api/controllers"
	"hhms-api/middleware"
	"log"
	"net/http"
)

func SetupRoutes() {
	db, err := configuration.GetMySQLDB()
	if err != nil {
		log.Fatalf("Failed to initialize database: %v", err)
	}

	globalController, err := controllers.NewGlobalController(db)
	if err != nil {
		log.Fatalf("Failed to initialize API controller: %v", err)
	}

	socialMediaController, err := controllers.NewSocialMediaController(db)
	if err != nil {
		log.Fatalf("Failed to initialize API controller: %v", err)
	}

	HealthAcitivityAttendanceController, err := controllers.NewHealthAcitivityAttendanceController(db)
	if err != nil {
		log.Fatalf("Failed to initialize API controller: %v", err)
	}

	HealthAcitivityAttendanceSubmitController, err := controllers.NewHealthAcitivityAttendanceSubmitController(db)
	if err != nil {
		log.Fatalf("Failed to initialize API controller: %v", err)
	}

	HealthAcitivityTrackerController, err := controllers.NewHealthAcitivityTrackerController(db)
	if err != nil {
		log.Fatalf("Failed to initialize API controller: %v", err)
	}

	http.HandleFunc("/login", globalController.Login)
	http.HandleFunc("/program", middleware.JWTMiddleware(globalController.Program))
	http.HandleFunc("/gender", middleware.JWTMiddleware(globalController.GetGender))
	http.HandleFunc("/socialMedia", middleware.JWTMiddleware(socialMediaController.SocialMedia))
	http.HandleFunc("/healthAttendance", middleware.JWTMiddleware(HealthAcitivityAttendanceController.HealthAcitivityAttendance))
	http.HandleFunc("/healthTracker", middleware.JWTMiddleware(HealthAcitivityTrackerController.HealthAcitivityTracker))
	http.HandleFunc("/healthAttendanceSubmit", middleware.JWTMiddleware(HealthAcitivityAttendanceSubmitController.AttendanceSubmit))
}
