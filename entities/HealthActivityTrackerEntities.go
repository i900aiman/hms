package entities

type GetHealthAcitivityTracker struct {
	Id           int    `json:"id"`
	ActivityName string `json:"activity_name"`
	ActivityDay  string `json:"activity_day"`
	ActivityTime string `json:"activity_time"`
}
