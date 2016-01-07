package models

import (
	"log"
	"time"

	"github.com/astaxie/beego/orm"
	_ "github.com/lib/pq"
)

type Patient struct {
	Id      int64  `orm:"pk;auto"`
	Name    string `orm:"unique"`
	Age     uint32
	Gender  uint32 // '0:male, 1: female'
	City    string
	Height  float64
	Weight  float64
	Created time.Time `orm:"auto_now_add;type(datetime)"`
	Updated time.Time `orm:"auto_now;type(datetime)"`
}

func (p Patient) Get() error {
	o := orm.NewOrm()
	err := o.Read(p)
	return err
}

func (p *Patient) Insert() error {
	o := orm.NewOrm()
	o.Begin()

	id, err := o.Insert(p)
	if err != nil {
		log.Println(err.Error())
		o.Rollback()
		return err
	} else {
		//		log.Println(id)
		p.Id = id
	}

	o.Commit()
	return nil
}

func (p Patient) GetPatients() []orm.ParamsList {
	o := orm.NewOrm()
	//	result := []Patient{}

	var lists []orm.ParamsList
	//	o.QueryTable("patient").OrderBy("Id").All(&result, "Id", "Name", "Age", "Gender", "Istrained")
	//	o.QueryTable("patient").OrderBy("Id").All(&result)

	o.QueryTable("patient").OrderBy("Id").ValuesList(&lists, "Id", "Name", "Age", "Gender", "city")
	return lists
}

func (p *Patient) GetPatient() error {
	o := orm.NewOrm()

	err := o.QueryTable("patient").Filter("Id", p.Id).One(p)
	if err == orm.ErrMultiRows {
		log.Printf("returned Muti Rows Not one , patient id :%d\n", p.Id)
		return err
	}
	if err == orm.ErrNoRows {
		log.Printf("Not row found , Pitient id : %d\n", p.Id)
		return err
	}
	return nil
}
