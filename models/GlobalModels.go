package models

import (
	"database/sql"
	"errors"
	"fmt"
	"hhms-api/entities"

	"golang.org/x/crypto/bcrypt"
)

type GlobalModel struct {
	Db *sql.DB
}

func (globalModel GlobalModel) Login(email, password string) (*entities.Login, error) {
	var login entities.Login

	query := "SELECT id, name, email, password FROM users WHERE email = ? LIMIT 1"
	err := globalModel.Db.QueryRow(query, email).Scan(&login.Id, &login.Name, &login.Email, &login.Password)
	if err != nil {
		fmt.Println("Error executing query:", err)
		return nil, errors.New("invalid login credentials")
	}

	err = bcrypt.CompareHashAndPassword([]byte(login.Password), []byte(password))
	if err != nil {
		fmt.Println("Error comparing password hash:", err)
		return nil, errors.New("invalid login credentials")
	}

	return &login, nil
}

func (globalModel GlobalModel) GetProgram() ([]entities.GetProgram, error) {
	results := []entities.GetProgram{}

	rows, err := globalModel.Db.Query("SELECT id,name,description FROM programs")
	if err != nil {
		return results, err
	}
	defer rows.Close()

	for rows.Next() {
		var result entities.GetProgram
		err := rows.Scan(
			&result.Id,
			&result.Name,
			&result.Description,
		)
		if err != nil {
			return results, err
		}

		results = append(results, result)
	}

	return results, nil
}

func (globalModel GlobalModel) GetGenderById(Id int) ([]entities.GetGenderById, error) {
	rows, err := globalModel.Db.Query("SELECT gender FROM users WHERE id = ?", Id)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var result []entities.GetGenderById
	for rows.Next() {
		var q entities.GetGenderById
		err := rows.Scan(&q.Gender)
		if err != nil {
			return nil, err
		}
		result = append(result, q)
	}

	return result, nil
}
