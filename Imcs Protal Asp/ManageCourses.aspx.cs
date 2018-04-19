using System;

namespace Imcs_Protal_Asp
{
    public partial class ManageCourses : System.Web.UI.Page
    {
        UserBLL objuserBLL = new UserBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            grdCourses.DataSource = objuserBLL.getCourses();
            grdCourses.DataBind();
        }
    }
}