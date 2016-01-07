package models

import (
	"os"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"

	_ "github.com/lib/pq"
)

func init() {
	if len(os.Args) > 1 {
		beego.RunMode = "pro"
		beego.Info("In mode: pro, " + os.Args[1])
	} else {
		beego.Info("In mode:  dev")
	}

	orm.Debug = false
	orm.RegisterDriver("postgres", orm.DR_Postgres)
	connstr := "user=screening password=123456 dbname=screening sslmode=disable host=" + beego.AppConfig.String("pgsqlurls")
	orm.RegisterDataBase("default", "postgres", connstr)

	orm.RegisterModel(new(Patient), new(Training), new(Question), new(Answer), new(Result))

	createTables()
}

func createTables() error {
	name := "default"
	force := false
	verbose := true
	err := orm.RunSyncdb(name, force, verbose)
	return err
}
