package models

import (
	"database/sql"
	"hhms-api/entities"
)

type HealthAcitivityTrackerModel struct {
	Db *sql.DB
}

func (healthActivityTrackerModel HealthAcitivityTrackerModel) GetHealthAcitivityTracker() ([]entities.GetHealthAcitivityTracker, error) {
	results := []entities.GetHealthAcitivityTracker{}

	rows, err := healthActivityTrackerModel.Db.Query("SELECT id,activity_name,activity_day, created_at FROM health_activity_tracker ORDER BY id DESC LIMIT 5")
	if err != nil {
		return results, err
	}

	defer rows.Close()

	for rows.Next() {
		var result entities.GetHealthAcitivityTracker
		err := rows.Scan(
			&result.Id,
			&result.ActivityName,
			&result.ActivityDay,
			&result.ActivityTime,
		)
		if err != nil {
			return results, err
		}

		results = append(results, result)
	}
	return results, nil
}
