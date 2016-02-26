package models

import (
	"os"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"

	_ "github.com/lib/pq"
	_ "github.com/mattn/go-sqlite3"
)

func init() {
	init_postgres()
//	init_sqlite()
}

func init_postgres(){
	if len(os.Args) > 1 {
		beego.BConfig.RunMode = "prod"
		beego.Info("In mode: prod, " + os.Args[1])
	} else {
		beego.Info("In mode:  dev")
	}
    beego.Info("postgres")
	orm.Debug = false
	orm.RegisterDriver("postgres", orm.DRPostgres)
	connstr := "user=screening password=123456 dbname=screening sslmode=disable host=" + beego.AppConfig.String("pgsqlurls")
	orm.RegisterDataBase("default", "postgres", connstr)

	orm.RegisterModel(new(Patient), new(Training), new(Question), new(Answer), new(Result))

	createTables()

}

func init_sqlite(){
	beego.Info("sqlite")
	orm.Debug = false
	orm.RegisterDriver("sqlite3", orm.DRSqlite)
	orm.RegisterDataBase("default", "sqlite3", "data.db", 30)
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
