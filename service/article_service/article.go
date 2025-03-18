package article_service

import "github.com/BackToNull/Gin-example/models"

type Article struct {
	ID int
}

func (article *Article) Get() (*models.Article, error) {

}

func (article *Article) ExistByID() (bool, error) {

}
