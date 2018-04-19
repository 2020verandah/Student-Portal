using System;

namespace Imcs_Protal_Asp
{
    public partial class ManageRoles : System.Web.UI.Page
    {
        UserBLL objuserBLL = new UserBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            grdRoles.DataSource = objuserBLL.getRoles();
            grdRoles.DataBind();
        }
    }
}