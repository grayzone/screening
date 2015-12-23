package controllers

import (
	"strconv"
	"strings"

	"github.com/astaxie/beego"

	"github.com/grayzone/screening/models"
)

type AnswerController struct {
	beego.Controller
}

// 1:0|2:0|3:0|5:0|6:0|7:0|8:0|10:0|12:0|13:0|14:0|55:0|56:0|57:0|60:0|
func (c *AnswerController) InsertOnePatientAnswer() {
	pid, _ := c.GetInt64("patientid")

	answers := c.GetString("answers")
	//	beego.Debug(answers)
	array := strings.Split(answers, "|")
	var alst []models.Answer
	for _, v := range array {
		if len(v) > 0 {
			item := strings.Split(v, ":")
			var a models.Answer
			a.Questionid, _ = strconv.ParseInt(item[0], 10, 64)
			a.Answer, _ = strconv.ParseInt(item[1], 10, 64)
			a.Patientid = pid
			alst = append(alst, a)
		}
	}
	//	beego.Debug(alst)
	models.InsertPatientAnswers(alst)
	c.Ctx.WriteString("ok")
}
