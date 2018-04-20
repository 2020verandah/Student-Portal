using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Imcs_Protal_Asp
{
    public partial class ManageRoles : System.Web.UI.Page
    {
        UserBLL objuserBLL = new UserBLL();
        RolesInfo rolesinfo = new RolesInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            pnl_getallroles.Visible = false;
            pnl_getrole.Visible = false;
            pnl_insertrole.Visible = false;
            pnl_updaterole.Visible = false;
            pnl_deleterole.Visible = false;
            lbl_result.Visible = false;


        }


        protected void btn_gar_Click(object sender, EventArgs e)
        {
            grd_getallroles.DataSource = objuserBLL.getAllRoles();
            grd_getallroles.DataBind();
            pnl_getallroles.Visible = true;
            pnl_getrole.Visible = false;
            pnl_insertrole.Visible = false;
            pnl_updaterole.Visible = false;
            pnl_deleterole.Visible = false;

        }

        protected void btn_gr_Click(object sender, EventArgs e)
        {
            pnl_getallroles.Visible = false;
            pnl_getrole.Visible = true;
            pnl_insertrole.Visible = false;
            pnl_updaterole.Visible = false;
            pnl_deleterole.Visible = false;

        }

        protected void btn_ir_Click(object sender, EventArgs e)
        {
            pnl_getallroles.Visible = false;
            pnl_getrole.Visible = false;
            pnl_insertrole.Visible = true;
            pnl_updaterole.Visible = false;
            pnl_deleterole.Visible = false;
        }

        protected void btn_ur_Click(object sender, EventArgs e)
        {
            pnl_getallroles.Visible = false;
            pnl_getrole.Visible = false;
            pnl_insertrole.Visible = false;
            pnl_updaterole.Visible = true;
            pnl_updaterole_tboxes.Visible = false;
            pnl_deleterole.Visible = false;
        }

        protected void btn_dr_Click(object sender, EventArgs e)
        {
            pnl_getallroles.Visible = false;
            pnl_getrole.Visible = false;
            pnl_insertrole.Visible = false;
            pnl_updaterole.Visible = false;
            pnl_deleterole.Visible = true;

        }

        protected void btn_getrole_Click(object sender, EventArgs e)
        {
            pnl_getrole.Visible = true;
            rolesinfo.RoleId = Convert.ToInt32(tbox_i_rid.Text);
            int roleid = rolesinfo.RoleId;
            grd_getrole.DataSource = objuserBLL.getRole(roleid);
            grd_getrole.DataBind();
            grd_getrole.Visible = true;

        }

        protected void btn_insertrole_Click(object sender, EventArgs e)
        {

            rolesinfo.RoleName = tbox_irname.Text;


            int outresult = objuserBLL.insertRole(rolesinfo);
            switch (outresult)
            {

                case 0:
                    pnl_insertrole.Visible = true;
                    lbl_result.Visible = true;
                    lbl_result.Text = "Role not inserted!! Please check the role id";
                    break;
                case 1:
                    pnl_insertrole.Visible = true;
                    lbl_result.Visible = true;
                    lbl_result.Text = "Role inserted Succesfully";
                    ClearInputs(Page.Controls);
                    break;
            }
        }

        protected void btn_cancel_insertrole_Click(object sender, EventArgs e)
        {
            ClearInputs(Page.Controls);
            pnl_insertrole.Visible = true;

        }

        protected void btn_updaterole_get_Click(object sender, EventArgs e)
        {
            pnl_updaterole.Visible = true;
            rolesinfo.RoleId = Convert.ToInt32(tbox_u_rid.Text);
            int roleid = rolesinfo.RoleId;

            DataSet ds = objuserBLL.getRole(roleid);
            if (ds.Tables[0].Rows.Count > 0)
            {
                pnl_updaterole_tboxes.Visible = true;

                tbox_urname.Text = ds.Tables[0].Rows[0]["RoleName"].ToString();

            }

            else
            {
                lbl_result.Visible = true;
                lbl_result.Text = "Role with id " + tbox_u_rid.Text + " doesnt exist in the database";
            }

        }

        protected void btn_updaterole_Click(object sender, EventArgs e)
        {
            rolesinfo.RoleId = Convert.ToInt32(tbox_u_rid.Text);
            rolesinfo.RoleName = tbox_urname.Text;


            int outresult = objuserBLL.updateRole(rolesinfo);
            switch (outresult)
            {

                case 0:
                    pnl_updaterole.Visible = true;
                    lbl_result.Visible = true;
                    lbl_result.Text = "Role not updated!! Please check the role id ";
                    break;
                case 1:
                    pnl_updaterole.Visible = true;
                    lbl_result.Visible = true;
                    lbl_result.Text = "Role updated Succesfully";
                    ClearInputs(Page.Controls);
                    break;
            }
        }

        protected void btn_cancel_updaterole_Click(object sender, EventArgs e)
        {
            ClearInputs(Page.Controls);
            pnl_updaterole.Visible = true;
            pnl_updaterole_tboxes.Visible = false;
        }

        protected void btn_deleterole_Click(object sender, EventArgs e)
        {
            pnl_deleterole.Visible = true;
            rolesinfo.RoleId = Convert.ToInt32(tbox_d_rid.Text);
            int outresult = objuserBLL.deleteRole(rolesinfo);

            switch (outresult)
            {

                case 0:
                    pnl_deleterole.Visible = true;
                    lbl_result.Visible = true;
                    lbl_result.Text = "Role not deleted!! Please check the role id";
                    break;
                case 1:
                    pnl_deleterole.Visible = true;
                    lbl_result.Visible = true;
                    lbl_result.Text = "Role deleted Succesfully";
                    ClearInputs(Page.Controls);
                    break;
            }

        }

        protected void btn_cancel_deleterole_Click(object sender, EventArgs e)
        {
            ClearInputs(Page.Controls);
            pnl_deleterole.Visible = true;
        }

        void ClearInputs(ControlCollection ctrls)
        {
            foreach (Control ctrl in ctrls)
            {
                if (ctrl is TextBox)
                {
                    ((TextBox)ctrl).Text = string.Empty;
                }
                ClearInputs(ctrl.Controls);
            }

        }

    }
}