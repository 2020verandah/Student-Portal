using System;

namespace Imcs_Protal_Asp
{
    public partial class ManageCourses : System.Web.UI.Page
    {
        UserBLL objuserBLL = new UserBLL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_gac_Click(object sender, EventArgs e)
        {
            grdCourses.DataSource = objuserBLL.getAllCourses();
            grdCourses.DataBind();
        }

        protected void btn_gc_Click(object sender, EventArgs e)
        {
            grdCourses.DataSource = objuserBLL.getCourse();
            grdCourses.DataBind();
        }

        protected void btn_ic_Click(object sender, EventArgs e)
        {

        }

        protected void btn_uc_Click(object sender, EventArgs e)
        {

        }

        protected void btn_dc_Click(object sender, EventArgs e)
        {

        }
    }
}