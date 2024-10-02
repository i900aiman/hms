package entities

type APIResponse struct {
	Data    interface{} `json:"data,omitempty"`
	Status  int         `json:"status"`
	Message string      `json:"message"`
}

type Login struct {
	Id       int    `json:"id"`
	Name     string `json:"name"`
	Email    string `json:"email"`
	Password string `json:"password"` // This is the hashed password
}

type GetProgram struct {
	Id          int     `json:"id"`
	Name        string  `json:"name"`
	Description *string `json:"description"`
	Image       string  `json:"image"`
}

type GetGenderById struct {
	Gender string `json:"gender"`
}
