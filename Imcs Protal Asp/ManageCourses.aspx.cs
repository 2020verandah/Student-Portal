using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Imcs_Protal_Asp
{
    public partial class ManageCourses : System.Web.UI.Page
    {
        UserBLL objuserBLL = new UserBLL();
        CoursesInfo coursesinfo = new CoursesInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            pnl_getallcourses.Visible = false;
            pnl_getcourse.Visible = false;
            pnl_insertcourse.Visible = false;
            pnl_updatecourse.Visible = false;
            pnl_deletecourse.Visible = false;
            lbl_result.Visible = false;


        }


        protected void btn_gac_Click(object sender, EventArgs e)
        {
            grd_getallcourses.DataSource = objuserBLL.getAllCourses();
            grd_getallcourses.DataBind();
            pnl_getallcourses.Visible = true;
            pnl_getcourse.Visible = false;
            pnl_insertcourse.Visible = false;
            pnl_updatecourse.Visible = false;
            pnl_deletecourse.Visible = false;

        }

        protected void btn_gc_Click(object sender, EventArgs e)
        {
            pnl_getallcourses.Visible = false;
            pnl_getcourse.Visible = true;
            pnl_insertcourse.Visible = false;
            pnl_updatecourse.Visible = false;
            pnl_deletecourse.Visible = false;

        }

        protected void btn_ic_Click(object sender, EventArgs e)
        {
            pnl_getallcourses.Visible = false;
            pnl_getcourse.Visible = false;
            pnl_insertcourse.Visible = true;
            pnl_updatecourse.Visible = false;
            pnl_deletecourse.Visible = false;
        }

        protected void btn_uc_Click(object sender, EventArgs e)
        {
            pnl_getallcourses.Visible = false;
            pnl_getcourse.Visible = false;
            pnl_insertcourse.Visible = false;
            pnl_updatecourse.Visible = true;
            pnl_updatecourse_tboxes.Visible = false;
            pnl_deletecourse.Visible = false;
        }

        protected void btn_dc_Click(object sender, EventArgs e)
        {
            pnl_getallcourses.Visible = false;
            pnl_getcourse.Visible = false;
            pnl_insertcourse.Visible = false;
            pnl_updatecourse.Visible = false;
            pnl_deletecourse.Visible = true;

        }

        protected void btn_getcourse_Click(object sender, EventArgs e)
        {
            pnl_getcourse.Visible = true;
            coursesinfo.CourseId = Convert.ToInt32(tbox_i_cid.Text);
            int courseid = coursesinfo.CourseId;
            grd_getcourse.DataSource = objuserBLL.getCourse(courseid);
            grd_getcourse.DataBind();
            grd_getcourse.Visible = true;

        }

        protected void btn_insertcourse_Click(object sender, EventArgs e)
        {

            coursesinfo.CourseName = tbox_icname.Text;


            int outresult = objuserBLL.insertCourse(coursesinfo);
            switch (outresult)
            {

                case 0:
                    pnl_insertcourse.Visible = true;
                    lbl_result.Visible = true;
                    lbl_result.Text = "Role not inserted!! Please check the role id";
                    break;
                case 1:
                    pnl_insertcourse.Visible = true;
                    lbl_result.Visible = true;
                    lbl_result.Text = "Role inserted Succesfully";
                    ClearInputs(Page.Controls);
                    break;
            }
        }

        protected void btn_cancel_insertcourse_Click(object sender, EventArgs e)
        {
            ClearInputs(Page.Controls);
            pnl_insertcourse.Visible = true;

        }

        protected void btn_updatecourse_get_Click(object sender, EventArgs e)
        {
            pnl_updatecourse.Visible = true;
            coursesinfo.CourseId = Convert.ToInt32(tbox_u_cid.Text);
            int roleid = coursesinfo.CourseId;

            DataSet ds = objuserBLL.getRole(roleid);
            if (ds.Tables[0].Rows.Count > 0)
            {
                pnl_updatecourse_tboxes.Visible = true;

                tbox_ucname.Text = ds.Tables[0].Rows[0]["CourseName"].ToString();

            }

            else
            {
                lbl_result.Visible = true;
                lbl_result.Text = "Course with id " + tbox_u_cid.Text + " doesnt exist in the database";
            }

        }

        protected void btn_updatecourse_Click(object sender, EventArgs e)
        {
            coursesinfo.CourseId = Convert.ToInt32(tbox_u_cid.Text);
            coursesinfo.CourseName = tbox_ucname.Text;


            int outresult = objuserBLL.updateCourse(coursesinfo);
            switch (outresult)
            {

                case 0:
                    pnl_updatecourse.Visible = true;
                    lbl_result.Visible = true;
                    lbl_result.Text = "Role not updated!! Please check the role id ";
                    break;
                case 1:
                    pnl_updatecourse.Visible = true;
                    lbl_result.Visible = true;
                    lbl_result.Text = "Role updated Succesfully";
                    ClearInputs(Page.Controls);
                    break;
            }
        }

        protected void btn_cancel_updatecourse_Click(object sender, EventArgs e)
        {
            ClearInputs(Page.Controls);
            pnl_updatecourse.Visible = true;
            pnl_updatecourse_tboxes.Visible = false;
        }

        protected void btn_deletecourse_Click(object sender, EventArgs e)
        {
            pnl_deletecourse.Visible = true;
            coursesinfo.CourseId = Convert.ToInt32(tbox_d_cid.Text);
            int outresult = objuserBLL.deleteCourse(coursesinfo);

            switch (outresult)
            {

                case 0:
                    pnl_deletecourse.Visible = true;
                    lbl_result.Visible = true;
                    lbl_result.Text = "Course not deleted!! Please check the role id";
                    break;
                case 1:
                    pnl_deletecourse.Visible = true;
                    lbl_result.Visible = true;
                    lbl_result.Text = "Course deleted Succesfully";
                    ClearInputs(Page.Controls);
                    break;
            }

        }

        protected void btn_cancel_deletecourse_Click(object sender, EventArgs e)
        {
            ClearInputs(Page.Controls);
            pnl_deletecourse.Visible = true;
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