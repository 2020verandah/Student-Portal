using Imcs_Protal_Asp.Utilities;
using System;
using System.Data;
using System.Data.SqlClient;

namespace Imcs_Protal_Asp
{
    public class UserDAL
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
            int roleid = Convert.ToInt32(sqlparam[2].Value);

            return roleid;

        }



        public DataSet getAllUsers()
        {


            SqlParameter[] sqlparam = new SqlParameter[1];
            sqlparam[0] = new SqlParameter("@uout", SqlDbType.Int);
            sqlparam[0].Direction = ParameterDirection.Output;
            DataSet ds = sqlHelper.RunSpReturnDs("sp_users_get_allusers", sqlparam);
            return ds;
        }

        public DataSet getUser(int userid)
        {

            SqlParameter[] sqlparam = new SqlParameter[2];
            sqlparam[0] = new SqlParameter("@uid", userid);
            sqlparam[1] = new SqlParameter("@uout", SqlDbType.Int);
            sqlparam[1].Direction = ParameterDirection.Output;
            DataSet ds = sqlHelper.RunSpReturnDs("sp_users_get_user", sqlparam);
            return ds;
        }



        public DataSet getAllRoles()
        {

            SqlParameter[] sqlparam = new SqlParameter[1];
            sqlparam[0] = new SqlParameter("@rout", SqlDbType.Int);
            sqlparam[0].Direction = ParameterDirection.Output;
            DataSet ds = sqlHelper.RunSpReturnDs("sp_roles_get_allroles", sqlparam);
            return ds;
        }

        public DataSet getRole(int roleid)
        {

            SqlParameter[] sqlparam = new SqlParameter[2];
            sqlparam[0] = new SqlParameter("@rid", roleid);
            sqlparam[1] = new SqlParameter("@rout", SqlDbType.Int);
            sqlparam[1].Direction = ParameterDirection.Output;
            DataSet ds = sqlHelper.RunSpReturnDs("sp_roles_get_role", sqlparam);
            return ds;
        }




        public DataSet getAllCourses()
        {
            SqlParameter[] sqlparam = new SqlParameter[1];
            sqlparam[0] = new SqlParameter("@cout", SqlDbType.Int);
            sqlparam[0].Direction = ParameterDirection.Output;
            DataSet ds = sqlHelper.RunSpReturnDs("sp_courses_get_allcourses", sqlparam);
            return ds;
        }

        public DataSet getCourse(int courseid)
        {
            SqlParameter[] sqlparam = new SqlParameter[2];
            sqlparam[0] = new SqlParameter("@cid", courseid);
            sqlparam[1] = new SqlParameter("@cout", SqlDbType.Int);
            sqlparam[1].Direction = ParameterDirection.Output;
            DataSet ds = sqlHelper.RunSpReturnDs("sp_courses_get_course", sqlparam);
            return ds;
        }
    }
}

