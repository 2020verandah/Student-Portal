using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Imcs_Protal_Asp.Utilities;

namespace Imcs_Protal_Asp
{
    public class DAL
    {

        SQLHelper sqlHelper = new SQLHelper();

        //Shashi's code
        public void SaveFeedback(FeedbackUserInfo fui)
        {
            SqlParameter[] sqlparam = new SqlParameter[3];
            sqlparam[0] = new SqlParameter("@trainerid", fui.Trainerid);
            sqlparam[1] = new SqlParameter("@questionid", fui.Questionid);
            sqlparam[2] = new SqlParameter("@feedback", fui.Feedback);
            int resultValue = sqlHelper.RunSp("sp_SetFeedback", sqlparam);
        }

       //Akhil's code
        public int ValidateUser(UsersInfo usersinfo)
        {
            SqlParameter[] sqlparam = new SqlParameter[3];
            sqlparam[0] = new SqlParameter("@email", usersinfo.Email);
            sqlparam[1] = new SqlParameter("@pwd", usersinfo.Password);
            sqlparam[2] = new SqlParameter("@uout", SqlDbType.Int);
            sqlparam[2].Direction = ParameterDirection.Output;
            int result = sqlHelper.RunSp("sp_users_validate", sqlparam);
            int output = Convert.ToInt32(sqlparam[2].Value);

            return output;

            //using (SqlCommand cmd = new SqlCommand("sp_users_validate")
            //{
            //    cmd.CommandType = CommandType.StoredProcedure;
            //    cmd.Parameters.Add("@email", SqlDbType.VarChar, 350
            //    cmd.Parameters.Add("@FruitName", SqlDbType.VarChar, 30);
            //    cmd.Parameters["@FruitName"].Direction = ParameterDirection.Output;
            //    con.Open();
            //    cmd.ExecuteNonQuery();
            //    con.Close();
            //    TextBox1.Text = cmd.Parameters["@FruitName"].Value.ToString();
            //}



        }


        public DataSet getUsers()
        {
            DataSet ds = sqlHelper.RunSpReturnDs("sp_users_get_allusers");
            return ds;
        }

        public DataSet getRoles()
        {
            DataSet ds = sqlHelper.RunSpReturnDs("sp_roles_get_allroles");
            return ds;
        }

        public DataSet getCourses()
        {
            DataSet ds = sqlHelper.RunSpReturnDs("sp_courses_get_allcourses");
            return ds;
        }
    }
}

