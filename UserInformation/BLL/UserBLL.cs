using System.Data;

namespace Imcs_Protal_Asp
{

    public class UserBLL
    {
        DAL objDal = new DAL();
        public int ValidateUser(UsersInfo usersinfo)
        {
            return objDal.ValidateUser(usersinfo);
        }


        public void SaveFeedback(FeedbackUserInfo fui)
        {
            objDal.SaveFeedback(fui);
        }





        public DataSet getUsers()
        {

            return objDal.getUsers();
        }

        public DataSet getRoles()
        {

            return objDal.getRoles();
        }

        public DataSet getCourses()
        {
            return objDal.getCourses();
        }
    }
}
