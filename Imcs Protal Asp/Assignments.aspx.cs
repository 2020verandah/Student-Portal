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
    public partial class Assignments : System.Web.UI.Page
    {
        StudentAssignmentBLL objBLL = new StudentAssignmentBLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            gvAssignments.DataSource = objBLL.viewAssignments();
            gvAssignments.DataBind();
        }

        protected void gvAssignments_SelectedIndexChanged(object sender, EventArgs e)
        {
            pnlAssignment.Visible = true;
            lblAName.Text = gvAssignments.Rows[0].Cells[1].Text;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}