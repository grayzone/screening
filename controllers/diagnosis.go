package controllers

import (
	"github.com/astaxie/beego"

	"github.com/grayzone/screening/models"
)

type DiagnosisController struct {
	beego.Controller
}

func (c *DiagnosisController) SaveDiagnosis() {
	var d models.Diagnosis
	d.Patientid, _ = c.GetInt64("patientid")

	err := d.Get()
	if err != nil {
		d.Stage = c.GetString("stage")
		d.Summary = c.GetString("summary")

		err = d.Insert()
		if err != nil {
			c.Ctx.WriteString(err.Error())
			return
		}
	} else {
		d.Stage = c.GetString("stage")
		d.Summary = c.GetString("summary")
		err = d.Update()
		if err != nil {
			c.Ctx.WriteString(err.Error())
			return
		}
	}
	c.Ctx.WriteString("ok")
}

func (c *DiagnosisController) GetDiagnosis() {
	var d models.Diagnosis
	d.Patientid, _ = c.GetInt64("patientid")
	d.GetDiagnosis()
	c.Data["json"] = &d
	c.ServeJson()
}
