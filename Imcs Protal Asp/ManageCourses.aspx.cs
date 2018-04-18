using System;

namespace Imcs_Protal_Asp
{
    public partial class ManageCourses : System.Web.UI.Page
    {
        DAL dal = new DAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            grdCourses.DataSource = dal.getCourses();
            grdCourses.DataBind();
        }
    }
}