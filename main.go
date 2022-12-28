package main

import (
	"idea-remote-test/api"

	"github.com/gin-gonic/gin"
)

func setupRouter() *gin.Engine {
	gin.SetMode(gin.ReleaseMode)
	r := gin.Default()
	r.GET("/welcome", api.Welcome)
	r.POST("/hello", api.Hello)
	return r
}

func main() {

	r := setupRouter()

	r.Run(":5457")
}
