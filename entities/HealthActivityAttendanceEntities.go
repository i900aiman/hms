package entities

type GetHealthAcitivityAttendance struct {
	Id         int     `json:"id"`
	User       *string `json:"user_id"`
	ActivityID *string `json:"activity_id"`
	CreatedAt  string  `json:"created_at"`
}

type PostActivityAttendance struct {
	UserID     string `json:"user_id"`
	ActivitiID string `json:"activity_id"`
	Latitude   string `json:"latitude"`
	Longitude  string `json:"longitude"`
}
