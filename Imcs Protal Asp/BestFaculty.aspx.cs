using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using NoteBook.DAL.NoteBook.BLL;

namespace NoteBook
{
    public partial class BestFaculty : System.Web.UI.Page
    {
        AssignmentBLL objbll = new AssignmentBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_FacultyID.Text = objbll.BestStudentID().Tables[0].Rows[0]["studentid"].ToString();
            lbl_FacultyFirstName.Text = objbll.BestStudentName().Tables[0].Rows[0]["firstname"].ToString();
            lbl_FacultyLastName0.Text = objbll.BestStudentName().Tables[0].Rows[0]["lastname"].ToString();

            if (!IsPostBack)
            {
                ddl_Greetings.DataValueField = "";
                ddl_Greetings.DataTextField = "greetings";
                ddl_Greetings.DataSource = objbll.GetFacultyGreetings();
                ddl_Greetings.DataBind();
                ddl_Greetings.Items.Insert(0, "---Greetings---");
            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
        protected void btn_SendGreeting_Click(object sender, EventArgs e)
        {
           
        }
    }
}