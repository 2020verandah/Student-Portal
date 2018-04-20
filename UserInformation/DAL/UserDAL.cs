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

        public int insertUser(UsersInfo usersInfo)
        {
            SqlParameter[] sqlparam = new SqlParameter[8];
            sqlparam[0] = new SqlParameter("@fname", usersInfo.FirstName);
            sqlparam[1] = new SqlParameter("@lname", usersInfo.LastName);
            sqlparam[2] = new SqlParameter("@email", usersInfo.Email);
            sqlparam[3] = new SqlParameter("@pwd", usersInfo.Password);
            sqlparam[4] = new SqlParameter("@gender", usersInfo.Gender);
            sqlparam[5] = new SqlParameter("@rid", usersInfo.RoleId);
            sqlparam[6] = new SqlParameter("@cid", usersInfo.CourseId);
            sqlparam[7] = new SqlParameter("@uout", SqlDbType.Int);
            sqlparam[7].Direction = ParameterDirection.Output;
            int result = sqlHelper.RunSp("sp_users_create_user", sqlparam);
            int outresult = Convert.ToInt32(sqlparam[7].Value);
            return outresult;
        }


        public int updateUser(UsersInfo usersInfo)
        {
            SqlParameter[] sqlparam = new SqlParameter[9];
            sqlparam[0] = new SqlParameter("@fname", usersInfo.FirstName);
            sqlparam[1] = new SqlParameter("@lname", usersInfo.LastName);
            sqlparam[2] = new SqlParameter("@email", usersInfo.Email);
            sqlparam[3] = new SqlParameter("@pwd", usersInfo.Password);
            sqlparam[4] = new SqlParameter("@gender", usersInfo.Gender);
            sqlparam[5] = new SqlParameter("@rid", usersInfo.RoleId);
            sqlparam[6] = new SqlParameter("@cid", usersInfo.CourseId);
            sqlparam[7] = new SqlParameter("@uid", usersInfo.UserId);
            sqlparam[8] = new SqlParameter("@uout", SqlDbType.Int);
            sqlparam[8].Direction = ParameterDirection.Output;
            int result = sqlHelper.RunSp("sp_users_update_user", sqlparam);
            int outresult = Convert.ToInt32(sqlparam[8].Value);
            return outresult;
        }


        public int deleteUser(UsersInfo usersInfo)
        {
            SqlParameter[] sqlparam = new SqlParameter[2];
            sqlparam[0] = new SqlParameter("@uid", usersInfo.UserId);
            sqlparam[1] = new SqlParameter("@uout", SqlDbType.Int);
            sqlparam[1].Direction = ParameterDirection.Output;
            int result = sqlHelper.RunSp("sp_users_delete_user", sqlparam);
            int outresult = Convert.ToInt32(sqlparam[1].Value);
            return outresult;

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


        public int insertRole(RolesInfo rolesInfo)
        {
            SqlParameter[] sqlparam = new SqlParameter[2];
            sqlparam[0] = new SqlParameter("@rname", rolesInfo.RoleName);
            sqlparam[1] = new SqlParameter("@rout", SqlDbType.Int);
            sqlparam[1].Direction = ParameterDirection.Output;
            int result = sqlHelper.RunSp("sp_roles_create_role", sqlparam);
            int outresult = Convert.ToInt32(sqlparam[1].Value);
            return outresult;
        }


        public int updateRole(RolesInfo rolesInfo)
        {
            SqlParameter[] sqlparam = new SqlParameter[3];
            sqlparam[0] = new SqlParameter("@rname", rolesInfo.RoleName);
            sqlparam[1] = new SqlParameter("@rid", rolesInfo.RoleId);
            sqlparam[2] = new SqlParameter("@rout", SqlDbType.Int);
            sqlparam[2].Direction = ParameterDirection.Output;
            int result = sqlHelper.RunSp("sp_roles_update_role", sqlparam);
            int outresult = Convert.ToInt32(sqlparam[2].Value);
            return outresult;
        }


        public int deleteRole(RolesInfo rolesInfo)
        {
            SqlParameter[] sqlparam = new SqlParameter[2];
            sqlparam[0] = new SqlParameter("@rid", rolesInfo.RoleId);
            sqlparam[1] = new SqlParameter("@rout", SqlDbType.Int);
            sqlparam[1].Direction = ParameterDirection.Output;
            int result = sqlHelper.RunSp("sp_roles_delete_role", sqlparam);
            int outresult = Convert.ToInt32(sqlparam[1].Value);
            return outresult;
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

        public int insertCourse(CoursesInfo coursesInfo)
        {
            SqlParameter[] sqlparam = new SqlParameter[2];
            sqlparam[0] = new SqlParameter("@cname", coursesInfo.CourseName);
            sqlparam[1] = new SqlParameter("@cout", SqlDbType.Int);
            sqlparam[1].Direction = ParameterDirection.Output;
            int result = sqlHelper.RunSp("sp_courses_create_course", sqlparam);
            int outresult = Convert.ToInt32(sqlparam[1].Value);
            return outresult;
        }


        public int updateCourse(CoursesInfo coursesInfo)
        {
            SqlParameter[] sqlparam = new SqlParameter[3];
            sqlparam[0] = new SqlParameter("@cname", coursesInfo.CourseName);
            sqlparam[1] = new SqlParameter("@cid", coursesInfo.CourseId);
            sqlparam[2] = new SqlParameter("@cout", SqlDbType.Int);
            sqlparam[2].Direction = ParameterDirection.Output;
            int result = sqlHelper.RunSp("sp_courses_update_course", sqlparam);
            int outresult = Convert.ToInt32(sqlparam[2].Value);
            return outresult;
        }


        public int deleteCourse(CoursesInfo coursesInfo)
        {
            SqlParameter[] sqlparam = new SqlParameter[2];
            sqlparam[0] = new SqlParameter("@cid", coursesInfo.CourseId);
            sqlparam[1] = new SqlParameter("@cout", SqlDbType.Int);
            sqlparam[1].Direction = ParameterDirection.Output;
            int result = sqlHelper.RunSp("sp_courses_delete_course", sqlparam);
            int outresult = Convert.ToInt32(sqlparam[1].Value);
            return outresult;
        }


    }
}

