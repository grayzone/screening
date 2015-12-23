package controllers

import (
	"strconv"

	"github.com/astaxie/beego"
	"github.com/grayzone/screening/models"
)

type PatientController struct {
	beego.Controller
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
	c.Data["json"] = &ps
	c.ServeJson()
}

func (c *PatientController) GetPatientByID() {

	beego.Debug(c.GetString("id"))

	var p models.Patient
	p.GetPatient(c.GetString("id"))
	c.Data["json"] = &p
	c.ServeJson()
}
