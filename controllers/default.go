package controllers

import (
	"github.com/astaxie/beego"

	"github.com/grayzone/screening/models"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	c.Layout = "layout.tpl"
	c.TplNames = "list.tpl"
}

type NewController struct {
	beego.Controller
}

func (c *NewController) Get() {
	c.Layout = "layout.tpl"
	c.TplNames = "new.tpl"
}

type ViewController struct {
	beego.Controller
}

func (c *ViewController) Get() {
	c.Layout = "layout.tpl"
	c.TplNames = "view.tpl"
}

type ListController struct {
	beego.Controller
}

func (c *ListController) Get() {
	c.Layout = "layout.tpl"
	c.TplNames = "list.tpl"
}

type ReportController struct {
	beego.Controller
}

func (c *ReportController) Get() {
	c.Layout = "layout.tpl"
	c.TplNames = "report.tpl"
}

type TrainingController struct {
	beego.Controller
}

func (c *TrainingController) GetTrainings() {

	var t models.Training
	ps := t.GetTrainings()
	c.Data["json"] = &ps
	c.ServeJson()
}
