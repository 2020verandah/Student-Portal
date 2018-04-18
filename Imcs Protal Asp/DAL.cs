using Imcs_Protal_Asp.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Imcs_Protal_Asp
{
    public class DAL
    {
        string connstring = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        SQLHelper sqlHelper = new SQLHelper();

        //Kishore's code
        public void CreateNewAssessment(List<AssessmentInfo> assessList)
        {
            SqlParameter[] sqlparam = new SqlParameter[7];
            sqlparam[0] = new SqlParameter("@name", assessList[0].Name);
            sqlparam[1] = new SqlParameter("@mode", assessList[0].Mode);
            sqlparam[2] = new SqlParameter("@postDate", assessList[0].Date);
            sqlparam[3] = new SqlParameter("@link", assessList[0].Link);
            sqlparam[4] = new SqlParameter("@trainer_Id", assessList[0].TrainerId);
            sqlparam[5] = new SqlParameter("@marks", assessList[0].Marks);
            sqlparam[6] = new SqlParameter("@result", 0);


            int resultValue = sqlHelper.RunSp("usp_CreateAssessment", sqlparam);

        }

        public DataSet GetAllAssessments()
        {
            DataSet ds = sqlHelper.RunSpReturnDs("usp_GetallStudentAssessments");
            return ds;
        }

        //Shashi's code
        public void SaveFeedback(FeedbackUserInfo fui)
        {
            SqlParameter[] sqlparam = new SqlParameter[3];
            sqlparam[0] = new SqlParameter("@trainerid", fui.Trainerid);
            sqlparam[1] = new SqlParameter("@questionid", fui.Questionid);
            sqlparam[2] = new SqlParameter("@feedback", fui.Feedback);
            int resultValue = sqlHelper.RunSp("sp_SetFeedback", sqlparam);
        }

        //Mitul's code
        public DataSet viewAssignments()
        {
            DataSet ds = sqlHelper.RunSpReturnDs("sp_Submissions_SELECT_Assignments");
            return ds;
        }

        //Akhil's code
        public int ValidateUser(List<UsersInfo> usersinfo)
        {
            SqlParameter[] sqlparam = new SqlParameter[3];
            sqlparam[0] = new SqlParameter("@email", usersinfo[0].Email);
            sqlparam[1] = new SqlParameter("@pwd", usersinfo[0].Password);
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

