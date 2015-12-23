package models

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"

	_ "github.com/lib/pq"
)

func init() {
	orm.Debug = false
	orm.RegisterDriver("postgres", orm.DR_Postgres)
	connstr := "user=screening password=123456 dbname=screening sslmode=disable host=" + beego.AppConfig.String("pgsqlurls")
	orm.RegisterDataBase("default", "postgres", connstr)

	orm.RegisterModel(new(Patient), new(Training), new(Question), new(Answer))

	createTables()
}

func createTables() error {
	name := "default"
	force := false
	verbose := true
	err := orm.RunSyncdb(name, force, verbose)
	return err
}
