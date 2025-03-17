package main

import (
	"fmt"
	"github.com/BackToNull/Gin-example/pkg/setting"
	"github.com/BackToNull/Gin-example/routers"
	"log"
	"net/http"
)

func main() {

	router := routers.InitRouter()

	s := &http.Server{
		Addr:           fmt.Sprintf(":%d", setting.HTTPPORT),
		Handler:        router,
		ReadTimeout:    setting.ReadTimeout,
		WriteTimeout:   setting.WriteTimeout,
		MaxHeaderBytes: 1 << 20,
	}

	err := s.ListenAndServe()
	if err != nil {
		log.Printf("Server err: %v", err)
	}
}
