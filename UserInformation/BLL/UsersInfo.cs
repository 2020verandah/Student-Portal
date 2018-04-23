namespace Imcs_Protal_Asp
{
    public class UsersInfo
    {

        private int _userid;
        private string _firstname;
        private string _lastname;
        private string _email;
        private string _password;
        private string _gender;
        private int _roleid;
        private int _courseid;

        public int UserId
        {
            get { return _userid; }
            set { _userid = value; }
        }


        public string FirstName
        {
            get { return _firstname; }
            set { _firstname = value; }
        }


        public string LastName
        {
            get { return _lastname; }
            set { _lastname = value; }
        }


        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }


        public string Password
        {
            get { return _password; }
            set { _password = value; }
        }


        public string Gender
        {
            get { return _gender; }
            set { _gender = value; }
        }


        public int RoleId
        {
            get { return _roleid; }
            set { _roleid = value; }
        }


        public int CourseId
        {
            get { return _courseid; }
            set { _courseid = value; }
        }



    }
}