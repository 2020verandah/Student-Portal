using System;

namespace Imcs_Protal_Asp
{
    public partial class ManageUsers : System.Web.UI.Page
    {

        UserBLL objuserBLL = new UserBLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            pnl_getuser.Visible = false;

        }


        protected void btn_gau_Click(object sender, EventArgs e)
        {
            grd_getallusers.DataSource = objuserBLL.getAllUsers();
            grd_getallusers.DataBind();
            pnl_getallusers.Visible = true;


        }

        protected void btn_gu_Click(object sender, EventArgs e)
        {
            pnl_getallusers.Visible = false;
            pnl_getuser.Visible = true;
            grd_getuser.Visible = false;

        }

        protected void btn_iu_Click(object sender, EventArgs e)
        {

        }

        protected void btn_uu_Click(object sender, EventArgs e)
        {

        }

        protected void btn_du_Click(object sender, EventArgs e)
        {

        }

        protected void btn_ok_Click(object sender, EventArgs e)
        {
            pnl_getuser.Visible = true;
            int userid = Convert.ToInt32(tbox_uid.Text);
            grd_getuser.DataSource = objuserBLL.getUser(userid);
            grd_getuser.DataBind();
            grd_getuser.Visible = true;

        }
    }
}