package main

import (
	"hhms-api/routes"
	"log"
	"net/http"
)

func main() {

	routes.SetupRoutes()

	port := ":10114"
	listenAddress := "[::]" + port // Listen on both IPv4 and IPv6

	log.Println("Listening on", listenAddress)
	if err := http.ListenAndServe(listenAddress, nil); err != nil {
		log.Fatal("Error starting server:", err)
	}
}
