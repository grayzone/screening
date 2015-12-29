package main

import (
	"github.com/astaxie/beego"
	_ "github.com/grayzone/screening/routers"
)

func main() {
	beego.Run()
}
