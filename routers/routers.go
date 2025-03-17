package routers

import (
	_ "github.com/BackToNull/Gin-example/docs"
	"github.com/BackToNull/Gin-example/middleware/jwt"
	"github.com/BackToNull/Gin-example/pkg/setting"
	"github.com/BackToNull/Gin-example/routers/api"
	v1 "github.com/BackToNull/Gin-example/routers/api/v1"
	"github.com/gin-gonic/gin"
	ginSwagger "github.com/swaggo/gin-swagger"
	"github.com/swaggo/gin-swagger/swaggerFiles"
)

func InitRouter() *gin.Engine {
	r := gin.New()
	r.Use(gin.Logger())
	r.Use(gin.Recovery())
	gin.SetMode(setting.RUNMode)

	r.GET("/swagger/*any", ginSwagger.WrapHandler(swaggerFiles.Handler))

	r.GET("/auth", api.GetAuth)

	r.POST("/upload", api.UploadImage)

	api_v1 := r.Group("api/v1")
	api_v1.Use(jwt.JWT())
	{
		api_v1.GET("/tags", v1.GetTags)
		api_v1.POST("/tags", v1.AddTag)
		api_v1.PUT("/tags/:id", v1.EditTag)
		api_v1.DELETE("/tags/:id", v1.DeleteTag)
		api_v1.GET("/articles", v1.GetArticles)
		api_v1.GET("/articles/:id", v1.GetArticle)
		api_v1.POST("/articles", v1.AddArticle)
		api_v1.PUT("/articles/:id", v1.EditArticle)
		api_v1.DELETE("/articles/:id", v1.DeleteArticle)
	}

	return r
}
