using System;

namespace Imcs_Protal_Asp
{
    public partial class ManageUsers : System.Web.UI.Page
    {

        UserBLL objuserBLL = new UserBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            grdUsers.DataSource = objuserBLL.getUsers();
            grdUsers.DataBind();


        }
    }
}