using System;

namespace Imcs_Protal_Asp
{
    public partial class ManageRoles : System.Web.UI.Page
    {
        UserBLL objuserBLL = new UserBLL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_gar_Click(object sender, EventArgs e)
        {
            grdRoles.DataSource = objuserBLL.getAllRoles();
            grdRoles.DataBind();
        }

        protected void btn_gr_Click(object sender, EventArgs e)
        {
            grdRoles.DataSource = objuserBLL.getRole();
            grdRoles.DataBind();
        }

        protected void btn_ir_Click(object sender, EventArgs e)
        {

        }

        protected void btn_ur_Click(object sender, EventArgs e)
        {

        }

        protected void btn_dr_Click(object sender, EventArgs e)
        {

        }
    }
}