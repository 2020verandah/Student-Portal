using System;

namespace Imcs_Protal_Asp
{
    public partial class ManageRoles : System.Web.UI.Page
    {
        DAL dal = new DAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            grdRoles.DataSource = dal.getRoles();
            grdRoles.DataBind();
        }
    }
}