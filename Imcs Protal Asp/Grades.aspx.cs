using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Imcs_Protal_Asp
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        DAL dal = new DAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            gvAssignmentGrades.DataSource = dal.viewAssignmentGrades();
            gvAssignmentGrades.DataBind();

            gvAssessmentGrades.DataSource = dal.viewAssessmentGrades();
            gvAssessmentGrades.DataBind();
        }

        protected void MenuMain_MenuItemClick(object sender, MenuEventArgs e)
        {
            if (menuMain.SelectedItem.Equals("Assignments"))
            {
                Response.Redirect("Assignments.aspx");
            }

            if (menuMain.SelectedItem.Equals("Grades"))
            {
                Response.Redirect("Grades");
            }
        }
    }
}