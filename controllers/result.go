package controllers

import (
	"github.com/astaxie/beego"

	"github.com/grayzone/screening/models"
)

type ResultController struct {
	beego.Controller
}

func (c *ResultController) SaveResult() {
	var d models.Result
	d.Patientid, _ = c.GetInt64("patientid")

	err := d.Get()
	if err != nil {
		d.Stage = c.GetString("stage")
		d.Comment = c.GetString("comment")

		err = d.Insert()
		if err != nil {
			c.Ctx.WriteString(err.Error())
			return
		}
	} else {
		d.Stage = c.GetString("stage")
		d.Comment = c.GetString("comment")
		err = d.Update()
		if err != nil {
			c.Ctx.WriteString(err.Error())
			return
		}
	}
	c.Ctx.WriteString("ok")
}

func (c *ResultController) GetResult() {
	var d models.Result
	d.Patientid, _ = c.GetInt64("patientid")
	d.GetResult()
	c.Data["json"] = &d
	c.ServeJSON()
}
