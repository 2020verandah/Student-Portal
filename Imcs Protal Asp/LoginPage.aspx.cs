using System;

namespace Imcs_Protal_Asp
{
    public partial class LoginPage : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Session["username"] = null;
                Session.Abandon();

            }
            Label1.Visible = false;
        }

        protected void Button_LogIn_Click(object sender, EventArgs e)
        {
            string email = emailid.Text;
            string pwd = password.Text;

            var usersinfo = new UsersInfo();

            usersinfo.Email = email;
            usersinfo.Password = pwd;

            UserBLL objUser = new UserBLL();
            int roleid = objUser.ValidateUser(usersinfo);


            switch (roleid)
            {
                case 1:
                    {
                        Session["username"] = emailid.Text.Trim();

                        Response.Redirect("~/AdminPage.aspx");
                        break;
                    }
                case 2:
                    {
                        Session["username"] = emailid.Text.Trim();
                        Response.Redirect("~/TrainerPage.aspx");
                        break;
                    }
                case 3:
                    {
                        Session["username"] = emailid.Text.Trim();
                        Response.Redirect("~/StudentPage.aspx");
                        break;
                    }
                default:
                    {
                        Label1.Visible = true;
                        break;

                    }
            }










        }

        protected void Button_CancelLogIn_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;

        }
    }
}