package controllers

import (
	"strconv"

	"github.com/astaxie/beego"

	"github.com/grayzone/screening/models"
)

type QuestionController struct {
	beego.Controller
}

func (c *QuestionController) InsertOneQuestion() {
	var q models.Question
	t, _ := c.GetInt32("groupid")
	q.Groupid = uint32(t)
	q.Content = c.GetString("content")

	err := q.Insert()
	if err != nil {
		c.Ctx.WriteString("null")
	} else {
		c.Ctx.WriteString(strconv.FormatInt(q.Id, 10))
	}
}

func (c *QuestionController) RemoveOneQuestion() {
	var q models.Question
	q.Id, _ = c.GetInt64("questionid")
	//	err := q.SetDeleted()
	err := q.Delete()
	if err != nil {
		c.Ctx.WriteString("failed")
	} else {
		c.Ctx.WriteString("ok")
	}
}

func (c *QuestionController) UpdateOneQuestion() {
	var q models.Question
	q.Id, _ = c.GetInt64("questionid")
	q.Content = c.GetString("content")
	err := q.UpdateContent()
	if err != nil {
		c.Ctx.WriteString("failed")
	} else {
		c.Ctx.WriteString("ok")
	}
}

func (c *QuestionController) GetQuestions() {

	var q models.Question
	ps := q.GetQuestions()
	c.Data["json"] = &ps
	c.ServeJson()
}

func (c *QuestionController) GetQuestionsByGroup() {

	var q models.Question
	t, _ := c.GetInt32("groupid")
	q.Groupid = uint32(t)
	ps := q.GetQuestionsByGroup()
	c.Data["json"] = &ps
	c.ServeJson()
}
