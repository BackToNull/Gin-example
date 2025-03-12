package util

import (
	"github.com/BackToNull/Gin-example/pkg/setting"
	"github.com/gin-gonic/gin"
	"github.com/unknwon/com" //引入常见的工具包
)

func GetPage(c *gin.Context) int {
	result := 0
	page, _ := com.StrTo(c.Query("page")).Int()
	if page > 0 {
		result = (page - 1) * setting.PageSize
	}

	return result
}
