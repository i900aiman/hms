package models

import (
	"database/sql"
	"hhms-api/entities"
)

type HealthAcitivityAttendanceSubmitModel struct {
	Db *sql.DB
}

func (healthActivityTrackerModel HealthAcitivityAttendanceSubmitModel) AddActivityAttendance(response *entities.PostActivityAttendance) (int64, error) {
	result, err := healthActivityTrackerModel.Db.Exec("INSERT INTO health_activity_attendance (user_id, activity_id, latitude, longitude) VALUES (?,?,?,?)",
		response.UserID,
		response.ActivitiID,
		response.Latitude,
		response.Longitude)
	if err != nil {
		return 0, err
	}
	return result.LastInsertId()
}
