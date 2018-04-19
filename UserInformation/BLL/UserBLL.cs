using System.Data;

namespace Imcs_Protal_Asp
{

    public class UserBLL
    {
        UserDAL objDal = new UserDAL();
        public int ValidateUser(UsersInfo usersinfo)
        {
            return objDal.ValidateUser(usersinfo);
        }


        public void SaveFeedback(FeedbackUserInfo fui)
        {
            objDal.SaveFeedback(fui);
        }





        public DataSet getUser(int userid)
        {

            return objDal.getUser(userid);
        }

        public DataSet getAllUsers()
        {
            return objDal.getAllUsers();
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
