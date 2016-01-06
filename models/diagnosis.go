package models

import (
	"log"
	"time"

	"github.com/astaxie/beego/orm"
	_ "github.com/lib/pq"
)

type Diagnosis struct {
	Id        int64 `orm:"pk;auto"`
	Patientid int64 `orm:"unique"`
	Stage     string
	Summary   string
	Created   time.Time `orm:"auto_now_add;type(datetime)"`
	Updated   time.Time `orm:"auto_now;type(datetime)"`
}

func (d *Diagnosis) Get() error {
	o := orm.NewOrm()
	err := o.Read(d, "Patientid")
	return err
}

func (d *Diagnosis) Insert() error {
	o := orm.NewOrm()
	o.Begin()
	id, err := o.Insert(d)
	if err != nil {
		log.Println(err.Error())
		o.Rollback()
		return err
	} else {
		d.Id = id
	}
	o.Commit()
	return nil
}

func (d *Diagnosis) Update() error {
	o := orm.NewOrm()
	d.Updated = time.Now()
	_, err := o.Update(d, "Stage", "Summary", "Updated")
	return err
}

func (d *Diagnosis) GetDiagnosis() error {
	o := orm.NewOrm()

	err := o.QueryTable("diagnosis").Filter("Patientid", d.Patientid).One(d)
	if err == orm.ErrMultiRows {
		log.Printf("returned Muti Rows Not one , patient id: %d \n", d.Id)
		//		log.Println(")
		return err
	}
	if err == orm.ErrNoRows {
		log.Printf("Not row found , Pitient id :  %d \n", d.Id)
		//		log.Println("" + a.Id)
		return err
	}
	return nil

}
