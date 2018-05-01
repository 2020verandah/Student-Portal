using System.Web.Services;

namespace Imcs_Protal_Asp
{
    /// <summary>
    /// Summary description for LoginPageWebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class LoginPageWebService : System.Web.Services.WebService
    {

        [WebMethod]
        public int validateUser_Click(UsersInfo usersInfo)
        {
            UsersInfo uif = new UsersInfo();
            uif.Email = usersInfo.Email;
            uif.Password = usersInfo.Password;
            UserBLL objuserBLL = new UserBLL();
            int outresult = objuserBLL.ValidateUser(uif);
            return outresult;

        }


    }
}
