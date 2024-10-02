package common

import (
	"github.com/golang-jwt/jwt/v5"
)

var JwtKey = []byte("98t4g54gb54g45guj39043ujg340g34vt3-0im-2v392u904tv34vtu9034")

type Api struct {
	Id    int    `json:"id"`
	Email string `json:"email"`
	Name  string `json:"name"`
	jwt.RegisteredClaims
}
