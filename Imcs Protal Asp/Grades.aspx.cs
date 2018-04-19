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
        StudentAssignmentBLL objBLL = new StudentAssignmentBLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            gvAssignmentGrades.DataSource = objBLL.viewAssignmentGrades();
            gvAssignmentGrades.DataBind();

            gvAssessmentGrades.DataSource = objBLL.viewAssessmentGrades();
            gvAssessmentGrades.DataBind();
        }
    }
}