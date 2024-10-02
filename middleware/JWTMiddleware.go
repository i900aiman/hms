package middleware

import (
	"hhms-api/common"
	"net/http"
	"strings"

	"github.com/golang-jwt/jwt/v5"
)

// Middleware to check JWT token
func JWTMiddleware(next http.HandlerFunc) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		authHeader := r.Header.Get("Authorization")
		if authHeader == "" {
			http.Error(w, "Authorization header missing", http.StatusUnauthorized)
			return
		}

		// Split the token from the header
		bearerToken := strings.Split(authHeader, " ")
		if len(bearerToken) != 2 {
			http.Error(w, "Invalid token format", http.StatusUnauthorized)
			return
		}

		tokenStr := bearerToken[1]

		api := &common.Api{}

		token, err := jwt.ParseWithClaims(tokenStr, api, func(token *jwt.Token) (interface{}, error) {
			return common.JwtKey, nil
		})

		if err != nil || !token.Valid {
			http.Error(w, "Invalid token", http.StatusUnauthorized)
			return
		}

		// Proceed with the next handler if the token is valid
		next.ServeHTTP(w, r)
	}
}
