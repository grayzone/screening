package models

import (
	"log"
	"time"

	"github.com/astaxie/beego/orm"
	_ "github.com/lib/pq"
)

type Question struct {
	Id        int64 `orm:"pk;auto"`
	Groupid   uint32
	Content   string    `orm:"unique"`
	Isdeleted bool      `orm:"default(false)"`
	Created   time.Time `orm:"auto_now_add;type(datetime)"`
	Updated   time.Time `orm:"auto_now;type(datetime)"`
}

func (q *Question) Insert() error {
	o := orm.NewOrm()
	o.Begin()
	id, err := o.Insert(q)
	if err != nil {
		log.Println(err.Error())
		o.Rollback()
		return err
	} else {
		q.Id = id
	}

	o.Commit()
	return nil
}

func (q *Question) SetDeleted() error {
	q.Isdeleted = true
	o := orm.NewOrm()
	_, err := o.Update(q, "Isdeleted")
	return err
}

func (q *Question) Delete() error {
	o := orm.NewOrm()
	_, err := o.Delete(q)
	return err
}

func (q *Question) UpdateContent() error {
	o := orm.NewOrm()
	_, err := o.Update(q, "Content")
	return err
}

func (q Question) GetQuestions() []orm.ParamsList {
	o := orm.NewOrm()
	var result []orm.ParamsList

	o.QueryTable("question").Filter("Isdeleted", false).OrderBy("Groupid", "Created").ValuesList(&result, "Id", "Groupid", "Content")

	return result
}

func (q Question) GetQuestionsByGroup() []orm.ParamsList {
	o := orm.NewOrm()
	var result []orm.ParamsList

	o.QueryTable("question").Filter("Groupid", q.Groupid).Filter("Isdeleted", false).OrderBy("Created").ValuesList(&result, "Id", "Groupid", "Content")

	return result
}
