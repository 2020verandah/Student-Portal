﻿using CreateAssignments.BLL;
using System;
using System.Web.Services;

namespace Imcs_Protal_Asp
{
    public partial class LoginPage : System.Web.UI.Page
    {
        AssignmentBLL objbll = new AssignmentBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            //lbl_StudentID.Text = objbll.BestStudentID().Tables[0].Rows[0]["studentid"].ToString();
            //lbl_StudentFirstName.Text = objbll.BestStudentName().Tables[0].Rows[0]["firstname"].ToString();
            //lbl_StudentLastName0.Text = objbll.BestStudentName().Tables[0].Rows[0]["lastname"].ToString();

            if (Session["username"] != null)
            {
                Session["username"] = null;
                Session.Abandon();

            }
        }

        //protected void Button_LogIn_Click(object sender, EventArgs e)
        //{
        //    string email = emailid.Text;
        //    string pwd = password.Text;

        //    var usersinfo = new UsersInfo();

        //    usersinfo.Email = email;
        //    usersinfo.Password = pwd;

        //    UserBLL objUser = new UserBLL();
        //    int roleid = objUser.ValidateUser(usersinfo);

        //    switch (roleid)
        //    {
        //        case 1:
        //            {
        //                Session["username"] = emailid.Text.Trim();

        //                Response.Redirect("~/AdminPage.aspx");
        //                break;
        //            }
        //        case 2:
        //            {
        //                Session["username"] = emailid.Text.Trim();
        //                Response.Redirect("~/TrainerPage.aspx");
        //                break;
        //            }
        //        case 3:
        //            {
        //                Session["username"] = emailid.Text.Trim();
        //                Response.Redirect("~/StudentPage.aspx");
        //                break;
        //            }
        //        default:
        //            {
        //                Label1.Visible = true;
        //                break;

        //            }
        //    }
        //}

        //protected void Button_CancelLogIn_Click(object sender, EventArgs e)
        //{
        //    Label1.Visible = false;

        //}



        [WebMethod]
        public static int validateUser_Click(UsersInfo usersInfo)
        {
            UsersInfo uif = new UsersInfo();
            uif.Email = usersInfo.Email;
            uif.Password = usersInfo.Password;
            UserBLL objuserBLL = new UserBLL();
            int outresult = objuserBLL.ValidateUser(uif);
            return outresult;

        }

        [WebMethod]
        public static StudentFacultyinfo GetBestStudentFaculty()
        {
            AssignmentBLL objbll = new AssignmentBLL();
            StudentFacultyinfo sfinfo = new StudentFacultyinfo();
            sfinfo.SID = Convert.ToInt32(objbll.BestStudentID().Tables[0].Rows[0]["studentid"].ToString());
            sfinfo.SFirstName = objbll.BestStudentName().Tables[0].Rows[0]["firstname"].ToString();
            sfinfo.SLastName = objbll.BestStudentName().Tables[0].Rows[0]["lastname"].ToString();


            sfinfo.FID = Convert.ToInt32(objbll.BestFacultyID().Tables[0].Rows[0]["Trainer_id"].ToString());
            sfinfo.FFirstName = objbll.BestfacultyName().Tables[0].Rows[0]["firstname"].ToString();
            sfinfo.FLastName = objbll.BestfacultyName().Tables[0].Rows[0]["lastname"].ToString();
            return sfinfo;
        }


    }
}