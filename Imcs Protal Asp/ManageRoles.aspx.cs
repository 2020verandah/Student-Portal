using System;

namespace Imcs_Protal_Asp
{
    public partial class ManageRoles : System.Web.UI.Page
    {
        UserBLL objuserBLL = new UserBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            pnl_getrole.Visible = false;

        }

        protected void btn_gar_Click(object sender, EventArgs e)
        {
            grd_getallroles.DataSource = objuserBLL.getAllRoles();
            grd_getallroles.DataBind();
            pnl_getallroles.Visible = true;
        }

        protected void btn_gr_Click(object sender, EventArgs e)
        {
            pnl_getallroles.Visible = false;
            pnl_getrole.Visible = true;
            grd_getrole.Visible = false;
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

        protected void btn_ok_Click(object sender, EventArgs e)
        {
            pnl_getrole.Visible = true;
            int roleid = Convert.ToInt32(tbox_rid.Text);
            grd_getrole.DataSource = objuserBLL.getRole(roleid);
            grd_getrole.DataBind();
            grd_getrole.Visible = true;
        }
    }
}