package routers

import (
	"github.com/astaxie/beego"
	"github.com/grayzone/screening/controllers"
)

func init() {
	beego.Router("/", &controllers.NewController{})
	beego.Router("/list", &controllers.ListController{})
	beego.Router("/new", &controllers.NewController{})
	beego.Router("/view", &controllers.ViewController{})
	beego.Router("/report", &controllers.ReportController{})
	beego.Router("/patient", &controllers.PatientController{})

	beego.Router("/insertpatient", &controllers.PatientController{}, "POST:InsertOnePatient")
	beego.Router("/getpatients", &controllers.PatientController{}, "GET:GetPatients")
	beego.Router("/getpatientbyid", &controllers.PatientController{}, "POST:GetPatientByID")

	beego.Router("/gettrainings", &controllers.TrainingController{}, "GET:GetTrainings")

	beego.Router("/insertquestion", &controllers.QuestionController{}, "POST:InsertOneQuestion")
	beego.Router("/removequestion", &controllers.QuestionController{}, "POST:RemoveOneQuestion")
	beego.Router("/updatequestion", &controllers.QuestionController{}, "POST:UpdateOneQuestion")
	beego.Router("/getquestions", &controllers.QuestionController{}, "GET:GetQuestions")
	beego.Router("/getquestionsbygroup", &controllers.QuestionController{}, "POST:GetQuestionsByGroup")

	beego.Router("/insertpatientanswer", &controllers.AnswerController{}, "POST:InsertOnePatientAnswer")
	beego.Router("/getlastestanswer", &controllers.AnswerController{}, "POST:GetLatestAnswer")

	beego.Router("/savediagnosis", &controllers.DiagnosisController{}, "POST:SaveDiagnosis")
	beego.Router("/getdiagnosis", &controllers.DiagnosisController{}, "POST:GetDiagnosis")

}
