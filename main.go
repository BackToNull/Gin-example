package main

import (
	"fmt"
	"github.com/BackToNull/Gin-example/models"
	"github.com/BackToNull/Gin-example/pkg/logging"
	"github.com/BackToNull/Gin-example/pkg/setting"
	"github.com/BackToNull/Gin-example/routers"
	"log"
	"net/http"
)

func main() {

	setting.Setup()
	models.Setup()
	logging.Setup()

	router := routers.InitRouter()

	s := &http.Server{
		Addr:           fmt.Sprintf(":%d", setting.ServerSetting.HttpPort),
		Handler:        router,
		ReadTimeout:    setting.ServerSetting.ReadTimeout,
		WriteTimeout:   setting.ServerSetting.WriteTimeout,
		MaxHeaderBytes: 1 << 20,
	}

	err := s.ListenAndServe()
	if err != nil {
		log.Printf("Server err: %v", err)
	}
}
