using System;

namespace Imcs_Protal_Asp
{
    public partial class ManageCourses : System.Web.UI.Page
    {
        UserBLL objuserBLL = new UserBLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            pnl_getcourse.Visible = false;
        }

        protected void btn_gac_Click(object sender, EventArgs e)
        {
            grd_getallcourses.DataSource = objuserBLL.getAllCourses();
            grd_getallcourses.DataBind();
            pnl_getallcourses.Visible = true;
        }

        protected void btn_gc_Click(object sender, EventArgs e)
        {

            pnl_getallcourses.Visible = false;
            pnl_getcourse.Visible = true;
            grd_getcourse.Visible = false;

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

        protected void btn_ok_Click(object sender, EventArgs e)
        {
            pnl_getcourse.Visible = true;
            int courseid = Convert.ToInt32(tbox_cid.Text);
            grd_getcourse.DataSource = objuserBLL.getCourse(courseid);
            grd_getcourse.DataBind();
            grd_getcourse.Visible = true;

        }
    }
}