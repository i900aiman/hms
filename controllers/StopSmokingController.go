package controllers

import (
	"database/sql"
)

type StopSmokingController struct {
	DB *sql.DB
}

func NewStopSmokingController(db *sql.DB) (*StopSmokingController, error) {
	return &StopSmokingController{DB: db}, nil
}
