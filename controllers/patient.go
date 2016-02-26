package controllers

import (
	"strconv"

	"github.com/astaxie/beego"
	"github.com/grayzone/screening/models"
)

type PatientController struct {
	beego.Controller
}

func (c *PatientController) Get() {
	c.Layout = "layout.tpl"
	c.TplName = "patient.tpl"
}

func (c *PatientController) InsertOnePatient() {
	var p models.Patient
	age, _ := c.GetInt32("age")
	p.Age = uint32(age)
	p.Name = c.GetString("name")
	p.City = c.GetString("city")
	gender, _ := c.GetInt32("gender")
	p.Gender = uint32(gender)
	height, _ := c.GetFloat("height")
	p.Height = height
	weight, _ := c.GetFloat("weight")
	p.Weight = weight

	p.Insert()
	c.Ctx.WriteString(strconv.FormatInt(p.Id, 10))
}

func (c *PatientController) GetPatients() {

	var p models.Patient
	ps := p.GetPatients()
	// get stage
	for i := range ps {
		var r models.Result
		r.Patientid = ps[i][0].(int64)
		r.Get()
		ps[i] = append(ps[i], r.Stage)

		if ps[i][3].(uint64) == 0 {
			ps[i][3] = "Male"
		} else {
			ps[i][3] = "Female"
		}
	}

	c.Data["json"] = &ps
	c.ServeJSON()
}

func (c *PatientController) GetPatientByID() {

	//	beego.Debug(c.GetString("patientid"))

	var p models.Patient
	pid, _ := c.GetInt64("patientid")
	p.Id = pid
	p.GetPatient()
	c.Data["json"] = &p
	c.ServeJSON()
}
