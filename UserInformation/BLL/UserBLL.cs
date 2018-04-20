using System.Data;

namespace Imcs_Protal_Asp
{

    public class UserBLL
    {
        UserDAL objDal = new UserDAL();


        //Shashi's code

        public void SaveFeedback(FeedbackUserInfo fui)
        {
            objDal.SaveFeedback(fui);
        }



        //Akhil's code


        //Users

        public int ValidateUser(UsersInfo usersinfo)
        {
            return objDal.ValidateUser(usersinfo);
        }


        public DataSet getAllUsers()
        {
            return objDal.getAllUsers();
        }

        public DataSet getUser(int userid)
        {

            return objDal.getUser(userid);
        }

        public int insertUser(UsersInfo usersinfo)
        {
            return objDal.insertUser(usersinfo);
        }

        public int updateUser(UsersInfo usersinfo)
        {
            return objDal.updateUser(usersinfo);
        }

        public int deleteUser(UsersInfo usersinfo)
        {
            return objDal.deleteUser(usersinfo);

        }



        //Roles

        public DataSet getAllRoles()
        {

            return objDal.getAllRoles();
        }

        public DataSet getRole(int roleid)
        {

            return objDal.getRole(roleid);
        }

        public int insertRole(RolesInfo rolesinfo)
        {
            return objDal.insertRole(rolesinfo);
        }

        public int updateRole(RolesInfo rolesinfo)
        {
            return objDal.updateRole(rolesinfo);
        }

        public int deleteRole(RolesInfo rolesinfo)
        {
            return objDal.deleteRole(rolesinfo);

        }


        //Courses

        public DataSet getAllCourses()
        {
            return objDal.getAllCourses();
        }

        public DataSet getCourse(int courseid)
        {
            return objDal.getCourse(courseid);
        }

        public int insertCourse(CoursesInfo coursesinfo)
        {
            return objDal.insertCourse(coursesinfo);
        }

        public int updateCourse(CoursesInfo coursesinfo)
        {
            return objDal.updateCourse(coursesinfo);
        }

        public int deleteCourse(CoursesInfo coursesinfo)
        {
            return objDal.deleteCourse(coursesinfo);

        }

    }
}
