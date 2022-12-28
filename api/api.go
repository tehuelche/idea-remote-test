package api

import "github.com/gin-gonic/gin"

func Welcome(c *gin.Context) {
	c.JSON(200, gin.H{
		"message": "Welcome to IDEA test",
	})
}

func Hello(c *gin.Context) {
	name := c.Query("name")
	c.JSON(200, gin.H{
		"message": "Hello " + name,
	})
}
