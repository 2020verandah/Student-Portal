using System;

namespace Imcs_Protal_Asp
{
    public partial class ManageUsers : System.Web.UI.Page
    {

        UserBLL objuserBLL = new UserBLL();
        protected void Page_Load(object sender, EventArgs e)
        {


        }


        protected void btn_gau_Click(object sender, EventArgs e)
        {
            grdUsers.DataSource = objuserBLL.getAllUsers();
            grdUsers.DataBind();
        }

        protected void btn_gu_Click(object sender, EventArgs e)
        {
            grdUsers.DataSource = objuserBLL.getUser();
            grdUsers.DataBind();
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
    }
}