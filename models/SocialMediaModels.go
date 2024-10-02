package models

import (
	"database/sql"
	"hhms-api/entities"
)

type SocialMediaModel struct {
	Db *sql.DB
}

func (socialMedialModel SocialMediaModel) GetSocialMedia() ([]entities.GetSocialMedia, error) {
	results := []entities.GetSocialMedia{}

	rows, err := socialMedialModel.Db.Query("SELECT id,title,description, date FROM social_media_campaign ORDER BY id DESC LIMIT 5")
	if err != nil {
		return results, err
	}

	defer rows.Close()

	for rows.Next() {
		var result entities.GetSocialMedia
		err := rows.Scan(
			&result.Id,
			&result.Title,
			&result.Description,
			&result.Date,
		)
		if err != nil {
			return results, err
		}

		results = append(results, result)
	}
	return results, nil
}
