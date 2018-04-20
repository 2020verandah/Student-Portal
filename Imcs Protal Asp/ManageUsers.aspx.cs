using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Imcs_Protal_Asp
{
    public partial class ManageUsers : System.Web.UI.Page
    {

        UserBLL objuserBLL = new UserBLL();
        UsersInfo usersinfo = new UsersInfo();


        protected void Page_Load(object sender, EventArgs e)
        {
            pnl_getallusers.Visible = false;
            pnl_getuser.Visible = false;
            pnl_insertuser.Visible = false;
            pnl_updateuser.Visible = false;
            pnl_deleteuser.Visible = false;
            lbl_result.Visible = false;

        }


        protected void btn_gau_Click(object sender, EventArgs e)
        {
            grd_getallusers.DataSource = objuserBLL.getAllUsers();
            grd_getallusers.DataBind();
            pnl_getallusers.Visible = true;
            pnl_getuser.Visible = false;
            pnl_insertuser.Visible = false;
            pnl_updateuser.Visible = false;
            pnl_deleteuser.Visible = false;

        }

        protected void btn_gu_Click(object sender, EventArgs e)
        {
            pnl_getallusers.Visible = false;
            pnl_getuser.Visible = true;
            pnl_insertuser.Visible = false;
            pnl_updateuser.Visible = false;
            pnl_deleteuser.Visible = false;

        }

        protected void btn_iu_Click(object sender, EventArgs e)
        {
            pnl_getallusers.Visible = false;
            pnl_getuser.Visible = false;
            pnl_insertuser.Visible = true;
            pnl_updateuser.Visible = false;
            pnl_deleteuser.Visible = false;
        }

        protected void btn_uu_Click(object sender, EventArgs e)
        {
            pnl_getallusers.Visible = false;
            pnl_getuser.Visible = false;
            pnl_insertuser.Visible = false;
            pnl_updateuser.Visible = true;
            pnl_updateuser_tboxes.Visible = false;
            pnl_deleteuser.Visible = false;
        }

        protected void btn_du_Click(object sender, EventArgs e)
        {
            pnl_getallusers.Visible = false;
            pnl_getuser.Visible = false;
            pnl_insertuser.Visible = false;
            pnl_updateuser.Visible = false;
            pnl_deleteuser.Visible = true;

        }

        protected void btn_getuser_Click(object sender, EventArgs e)
        {
            pnl_getuser.Visible = true;
            usersinfo.UserId = Convert.ToInt32(tbox_i_uid.Text);
            int userid = usersinfo.UserId;
            grd_getuser.DataSource = objuserBLL.getUser(userid);
            grd_getuser.DataBind();
            grd_getuser.Visible = true;

        }

        protected void btn_insertuser_Click(object sender, EventArgs e)
        {

            usersinfo.FirstName = tbox_ifname.Text;
            usersinfo.LastName = tbox_ilname.Text;
            usersinfo.Email = tbox_iemail.Text;
            usersinfo.Password = tbox_ipwd.Text;
            usersinfo.Gender = tbox_igender.Text;
            usersinfo.RoleId = Convert.ToInt32(tbox_irid.Text);
            usersinfo.CourseId = Convert.ToInt32(tbox_icid.Text);

            int outresult = objuserBLL.insertUser(usersinfo);
            switch (outresult)
            {

                case 0:
                    pnl_insertuser.Visible = true;
                    lbl_result.Visible = true;
                    lbl_result.Text = "User not inserted!! Please check the role id";
                    break;
                case 1:
                    pnl_insertuser.Visible = true;
                    lbl_result.Visible = true;
                    lbl_result.Text = "User inserted Succesfully";
                    ClearInputs(Page.Controls);
                    break;
            }
        }

        protected void btn_cancel_insertuser_Click(object sender, EventArgs e)
        {
            ClearInputs(Page.Controls);
            pnl_insertuser.Visible = true;

        }

        protected void btn_updateuser_get_Click(object sender, EventArgs e)
        {
            pnl_updateuser.Visible = true;
            usersinfo.UserId = Convert.ToInt32(tbox_u_uid.Text);
            int userid = usersinfo.UserId;

            DataSet ds = objuserBLL.getUser(userid);
            if (ds.Tables[0].Rows.Count > 0)
            {
                pnl_updateuser_tboxes.Visible = true;

                tbox_ufname.Text = ds.Tables[0].Rows[0]["FirstName"].ToString();
                tbox_ulname.Text = ds.Tables[0].Rows[0]["LastName"].ToString();
                tbox_uemail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                tbox_upwd.Text = ds.Tables[0].Rows[0]["Password"].ToString();
                tbox_ugender.Text = ds.Tables[0].Rows[0]["Gender"].ToString();
                tbox_urid.Text = ds.Tables[0].Rows[0]["RoleId"].ToString();
                tbox_ucid.Text = ds.Tables[0].Rows[0]["CourseId"].ToString();
            }

            else
            {
                lbl_result.Visible = true;
                lbl_result.Text = "User with id " + tbox_u_uid.Text + " doesnt exist in the database";
            }

        }

        protected void btn_updateuser_Click(object sender, EventArgs e)
        {
            usersinfo.UserId = Convert.ToInt32(tbox_u_uid.Text);
            usersinfo.FirstName = tbox_ufname.Text;
            usersinfo.LastName = tbox_ulname.Text;
            usersinfo.Email = tbox_uemail.Text;
            usersinfo.Password = tbox_upwd.Text;
            usersinfo.Gender = tbox_ugender.Text;
            usersinfo.RoleId = Convert.ToInt32(tbox_urid.Text);
            usersinfo.CourseId = Convert.ToInt32(tbox_ucid.Text);

            int outresult = objuserBLL.updateUser(usersinfo);
            switch (outresult)
            {

                case 0:
                    pnl_updateuser.Visible = true;
                    lbl_result.Visible = true;
                    lbl_result.Text = "User not updated!! Please check the role id";
                    break;
                case 1:
                    pnl_updateuser.Visible = true;
                    lbl_result.Visible = true;
                    lbl_result.Text = "User updated Succesfully";
                    ClearInputs(Page.Controls);
                    break;
            }
        }

        protected void btn_cancel_updateuser_Click(object sender, EventArgs e)
        {
            ClearInputs(Page.Controls);
            pnl_updateuser.Visible = true;
        }

        protected void btn_deleteuser_Click(object sender, EventArgs e)
        {
            pnl_deleteuser.Visible = true;
            usersinfo.UserId = Convert.ToInt32(tbox_d_uid.Text);
            int outresult = objuserBLL.deleteUser(usersinfo);

            switch (outresult)
            {

                case 0:
                    pnl_deleteuser.Visible = true;
                    lbl_result.Visible = true;
                    lbl_result.Text = "User not deleted!! Please check the user id";
                    break;
                case 1:
                    pnl_deleteuser.Visible = true;
                    lbl_result.Visible = true;
                    lbl_result.Text = "User deleted Succesfully";
                    ClearInputs(Page.Controls);
                    break;
            }

        }

        protected void btn_cancel_deleteuser_Click(object sender, EventArgs e)
        {
            ClearInputs(Page.Controls);
            pnl_deleteuser.Visible = true;
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