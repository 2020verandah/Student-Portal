using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using NoteBook.DAL.NoteBook.BLL;
using System.Web.Services;

namespace NoteBook
{
    public partial class BestStudent : System.Web.UI.Page
    {
        AssignmentBLL objbll = new AssignmentBLL();
        protected void Page_Load(object sender, EventArgs e) 
        {
            //lbl_StudentID.Text = objbll.BestStudentID().Tables[0].Rows[0]["studentid"].ToString();
            //lbl_StudentFirstName.Text = objbll.BestStudentName().Tables[0].Rows[0]["firstname"].ToString();
            //lbl_StudentLastName0.Text = objbll.BestStudentName().Tables[0].Rows[0]["lastname"].ToString();

            if (!IsPostBack)
            {
                ddl_Greetings.DataValueField = "";
                ddl_Greetings.DataTextField = "greetings";
                ddl_Greetings.DataSource = objbll.GetStudentGreetings();
                ddl_Greetings.DataBind();
                ddl_Greetings.Items.Insert(0, "---Greetings---");
            }
        }
        protected void btn_SendGreeting_Click(object sender, EventArgs e)
        {
            Session["beststudentid"]=lbl_StudentID.Text;
            

            if (txt_Greeting.Text=="")
            {
                lbl_GreetingStatus.Text = "Please Enter Greeting";
            }
            else
            {

            }

        }
        //[WebMethod]
        //public static string GetBestStudent()
        //{
        //    AssignmentBLL objbll = new AssignmentBLL();
        //    string stuId = objbll.BestStudentID().Tables[0].Rows[0]["studentid"].ToString();
        //    string fname = objbll.BestStudentName().Tables[0].Rows[0]["firstname"].ToString();
        //    string lname = objbll.BestStudentName().Tables[0].Rows[0]["lastname"].ToString();
        //    return fname;
        //}
        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}