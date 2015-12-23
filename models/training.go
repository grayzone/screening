package models

import (
	"time"

	"github.com/astaxie/beego/orm"

	_ "github.com/lib/pq"
)

type Training struct {
	Id        int64 `orm:"pk;auto"`
	Result    string
	Patientid int64
	Created   time.Time `orm:"auto_now_add;type(datetime)"`
	Updated   time.Time `orm:"auto_now;type(datetime)"`
}

func (p Training) GetTrainings() []orm.ParamsList {
	o := orm.NewOrm()
	lists := []orm.ParamsList{}
	o.QueryTable("training").OrderBy("Id").ValuesList(&lists)
	return lists
}
