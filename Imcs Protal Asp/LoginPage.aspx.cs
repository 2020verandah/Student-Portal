using System;

namespace Imcs_Protal_Asp
{
    public partial class LoginPage : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_LogIn_Click(object sender, EventArgs e)
        {
            string email = emailid.Text;
            string pwd = passwords.Text;

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
                        break;
                    }
            }









            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            //con.Open();
            //SqlCommand cmd = new SqlCommand("select * from UserInformation where UserName =@username and Password=@password", con);
            //cmd.Parameters.AddWithValue("@username", textBox1.Text);
            //cmd.Parameters.AddWithValue("@password", textBox2.Text);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //if (dt.Rows.Count > 0)

            //{

            //    Response.Redirect("Name of the webpage that validated user can access");

            //}

            //else

            //{

            //    Label3.Visible = true;
            //    Label3.Text = "Wrong Details";
            //}


        }

        protected void Button_CancelLogIn_Click(object sender, EventArgs e)
        {

        }
    }
}