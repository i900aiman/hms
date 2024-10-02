package models

import (
	"database/sql"
	"hhms-api/entities"
)

type HealthAcitivityAttendanceModel struct {
	Db *sql.DB
}

func (healthActivityAttendanceModel HealthAcitivityAttendanceModel) GetHealthAcitivityAttendance() ([]entities.GetHealthAcitivityAttendance, error) {
	results := []entities.GetHealthAcitivityAttendance{}

	rows, err := healthActivityAttendanceModel.Db.Query("SELECT id,user_id,activity_id, created_at FROM health_activity_attendance ORDER BY id DESC LIMIT 5")
	if err != nil {
		return results, err
	}

	defer rows.Close()

	for rows.Next() {
		var result entities.GetHealthAcitivityAttendance
		err := rows.Scan(
			&result.Id,
			&result.User,
			&result.ActivityID,
			&result.CreatedAt,
		)
		if err != nil {
			return results, err
		}

		results = append(results, result)
	}
	return results, nil
}
