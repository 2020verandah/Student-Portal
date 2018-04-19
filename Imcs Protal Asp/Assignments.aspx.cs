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
        DAL dal = new DAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            gvAssignments.DataSource = dal.viewAssignments();
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

        protected void MenuMain_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        //protected void MenuAssignment_MenuItemClick(object sender, MenuEventArgs e)
        //{
        //    if (MenuAssignment.SelectedItem.Text.Equals("View"))
        //    {
        //        pnlView.Visible = true;
        //        pnlSubmit.Visible = false;
        //    }

        //    if (MenuAssignment.SelectedItem.Text.Equals("Submit"))
        //    {
        //        pnlSubmit.Visible = true;
        //        pnlView.Visible = false;
        //    }
        //}
    }
}