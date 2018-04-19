using System.Data;

namespace Imcs_Protal_Asp
{

    public class UserBLL
    {
        UserDAL objDal = new UserDAL();



        public void SaveFeedback(FeedbackUserInfo fui)
        {
            objDal.SaveFeedback(fui);
        }



        //Akhil's code
        public int ValidateUser(UsersInfo usersinfo)
        {
            return objDal.ValidateUser(usersinfo);
        }

        public DataSet getUser(int userid)
        {

            return objDal.getUser(userid);
        }

        public DataSet getAllUsers()
        {
            return objDal.getAllUsers();
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

        public DataSet getRole(int roleid)
        {

            return objDal.getRole(roleid);
        }

        public DataSet getAllRoles()
        {

            return objDal.getAllRoles();
        }

        public DataSet getCourse(int courseid)
        {
            return objDal.getCourse(courseid);
        }

        public DataSet getAllCourses()
        {
            return objDal.getAllCourses();
        }
    }
}
