using System;
using System.Collections.Generic;

namespace Imcs_Protal_Asp
{
    public partial class LoginPage : System.Web.UI.Page
    {
        DAL dal = new DAL();
        List<UsersInfo> usersinfo = new List<UsersInfo>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_LogIn_Click(object sender, EventArgs e)
        {
            string email = emailid.Text;
            string pwd = passwords.Text;


            usersinfo.Add(new UsersInfo()
            {
                Email = email,
                Password = pwd,

            });
            int result = dal.ValidateUser(usersinfo);
            if (result == 11)
            {
                Response.Redirect("~/AdminPage.aspx");
            }
            else if (result == 12)
            {
                Response.Redirect("~/TrainerPage.aspx");
            }
            else if (result == 13)
            {
                Response.Redirect("~/StudentPage.aspx");
            }
            else
            {
                Response.Redirect("~/LoginPage.aspx");
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