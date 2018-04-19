using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Imcs_Protal_Asp
{
    
    public partial class CreateAssessment : System.Web.UI.Page
    {

        List<AssessmentInfo> AssessList = new List<AssessmentInfo>();
        AssessmentBLL objDal = new AssessmentBLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Dictionary<string, string> ExamMode = new Dictionary<string, string>();
                ExamMode.Add("-1", "-Select Mode-");
                ExamMode.Add("PPR", "Paper");
                ExamMode.Add("PTL", "Practical");
                DDLAssessMode.DataSource = ExamMode;
                DDLAssessMode.DataValueField = "Key";
                DDLAssessMode.DataTextField = "Value";
                DDLAssessMode.DataBind();
            }
           
        }

        

        protected void BtnCreateAssess_Click(object sender, EventArgs e)
        {
            string name = TxtAssessName.Text;
            string mode = DDLAssessMode.SelectedValue;
            string date = txtAssessDate.Text;
            string link = Server.MapPath(FileUploadLink.FileName);

            int marks = Convert.ToInt32(TxtMarks.Text);
            int trainerId = 1;

            AssessList.Add(new AssessmentInfo()
            {
                Name = name,
                Mode = mode,
                Date = date,
                Link = link,
                Marks = marks,
                TrainerId = trainerId
            });
            objDal.CreateNewAssessment(AssessList);            
            Response.Redirect("~/ViewAssessments.aspx");
        }
    }
}