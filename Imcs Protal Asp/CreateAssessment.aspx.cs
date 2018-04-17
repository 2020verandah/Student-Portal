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
        DAL sqlHelper = new DAL();

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
            calenderAssessDate.Visible = false;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            calenderAssessDate.Visible = true;
        }

        protected void calenderAssessDate_SelectionChanged(object sender, EventArgs e)
        {
            calenderAssessDate.Visible = false;
            TextBox1.Text = Convert.ToString(calenderAssessDate.SelectedDate);
        }

        protected void BtnCreateAssess_Click(object sender, EventArgs e)
        {
            string name = TxtAssessName.Text;
            string mode = DDLAssessMode.SelectedValue;
            string date = TextBox1.Text;
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

            sqlHelper.CreateNewAssessment(AssessList);
            //Get connection string from web.config file  
            //string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            ////create new sqlconnection and connection to database by using connection string from web.config file  
            //SqlConnection con = new SqlConnection(strcon);
            //con.Open();
            Response.Redirect("~/ViewAssessments.aspx");
        }
        
    }
}