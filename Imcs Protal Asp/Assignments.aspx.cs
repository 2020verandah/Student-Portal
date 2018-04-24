using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
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
            DataSet ds = objBLL.viewAssignments();
            pnlAssignment.Visible = true;
            lblAID.Text = ds.Tables[0].Rows[gvAssignments.SelectedIndex]["ID"].ToString();
            lblAName.Text = ds.Tables[0].Rows[gvAssignments.SelectedIndex]["Assignment"].ToString();
            lblAInfo.Text = ds.Tables[0].Rows[gvAssignments.SelectedIndex]["Info"].ToString();
            lblADeadline.Text = ds.Tables[0].Rows[gvAssignments.SelectedIndex]["Deadline"].ToString();
            lblAMarks.Text = ds.Tables[0].Rows[gvAssignments.SelectedIndex]["TotalMarks"].ToString();
            lblAStatus.Text = ds.Tables[0].Rows[gvAssignments.SelectedIndex]["Status"].ToString();
        }

        [WebMethod]
        public static void btnSubmit_Click(SubmissionsInfo objSInfo)
        {
            Assignments objA = new Assignments();
            StudentAssignmentBLL objBLL = new StudentAssignmentBLL();

            int result = objBLL.UpdateAssignmentLink(objSInfo);
            if (result == 1)
            {
                objA.lblMessage.Text = "Link has been updated.";
                objA.lblMessage.Attributes.Add("style", "color: green");
            }

            else if (result == 0)
            {
                objA.lblMessage.Text = "Deadline has been passed. Link cannot be updated.";
                objA.lblMessage.Attributes.Add("style", "color: red");
            }
        }
    }
}