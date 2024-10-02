package entities

type GetSocialMedia struct {
	Id          int     `json:"id"`
	Title       string  `json:"title"`
	Description *string `json:"description"`
	Date        string  `json:"date"`
}
