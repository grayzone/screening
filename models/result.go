package models

import (
	"log"
	"time"

	"github.com/astaxie/beego/orm"
	_ "github.com/lib/pq"
)

type Result struct {
	Id        int64 `orm:"pk;auto"`
	Patientid int64 `orm:"unique"`
	Stage     string
	Comment   string
	Created   time.Time `orm:"auto_now_add;type(datetime)"`
	Updated   time.Time `orm:"auto_now;type(datetime)"`
}

func (r *Result) Get() error {
	o := orm.NewOrm()
	err := o.Read(r, "Patientid")
	return err
}

func (r *Result) Insert() error {
	o := orm.NewOrm()
	o.Begin()
	id, err := o.Insert(r)
	if err != nil {
		log.Println(err.Error())
		o.Rollback()
		return err
	} else {
		r.Id = id
	}
	o.Commit()
	return nil
}

func (r *Result) Update() error {
	o := orm.NewOrm()
	r.Updated = time.Now()
	_, err := o.Update(r, "Stage", "Comment", "Updated")
	return err
}

func (r *Result) GetResult() error {
	o := orm.NewOrm()

	err := o.QueryTable("result").Filter("Patientid", r.Patientid).One(r)
	if err == orm.ErrMultiRows {
		log.Printf("returned Muti Rows Not one , patient id: %d \n", r.Id)
		//		log.Println(")
		return err
	}
	if err == orm.ErrNoRows {
		log.Printf("Not row found , Pitient id :  %d \n", r.Id)
		//		log.Println("" + a.Id)
		return err
	}
	return nil

}
