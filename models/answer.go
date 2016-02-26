package models

import (
	"log"
	"time"

	"github.com/astaxie/beego/orm"

)

type Answer struct {
	Id         int64 `orm:"pk;auto"`
	Patientid  int64
	Questionid int64
	Answer     int64
	Created    time.Time `orm:"auto_now_add;type(datetime)"`
	Updated    time.Time `orm:"auto_now;type(datetime)"`
}

func (a *Answer) Insert() error {
	o := orm.NewOrm()
	o.Begin()
	id, err := o.Insert(a)
	if err != nil {
		log.Println(err.Error())
		o.Rollback()
		return err
	} else {
		a.Id = id
	}

	o.Commit()
	return nil
}

func InsertPatientAnswers(as []Answer) {
	o := orm.NewOrm()

	qs := o.QueryTable("answer")
	i, _ := qs.PrepareInsert()
	for _, answer := range as {
		_, err := i.Insert(&answer)
		if err != nil {
			log.Println("insert patient answer failed :" + err.Error())
		}
	}
	i.Close()
}

func (a *Answer) GetLatestAnswer() error {
	o := orm.NewOrm()

	err := o.QueryTable("answer").Filter("Patientid", a.Patientid).Filter("Questionid", a.Questionid).OrderBy("-Updated").One(a)
	if err == orm.ErrMultiRows {
		log.Printf("returned Muti Rows Not one , patient id: %d \n", a.Id)
		//		log.Println(")
		return err
	}
	if err == orm.ErrNoRows {
		log.Printf("Not row found , Pitient id :  %d \n", a.Id)
		//		log.Println("" + a.Id)
		return err
	}
	return nil

}
