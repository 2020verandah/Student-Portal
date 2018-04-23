using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;

namespace Imcs_Protal_Asp
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        [WebMethod]
        [ScriptMethod(UseHttpGet = true)]
        public static void GetData(AssessmentInfo objAssess)

        {
            List<AssessmentInfo> AssessList = new List<AssessmentInfo>();
            AssessmentBLL objDal = new AssessmentBLL();
            string name = objAssess.Name;
            string mode = objAssess.Mode;
            string date = objAssess.Date;
            string link = objAssess.Link;
            int marks = objAssess.Marks;
            int trainerId = 1;

            AssessList.Add(new AssessmentInfo()
            {
                Name = name,
                Mode = mode,
                Date = date,
                Link = link,
                Marks = marks,
                TrainerId = trainerId
            });
            objDal.CreateNewAssessment(AssessList);
            //Response.Redirect("~/ViewAssessments.aspx");
        }
        [WebMethod]
        public void HelloWorld(AssessmentInfo objAssess)
        {
            List<AssessmentInfo> AssessList = new List<AssessmentInfo>();
            AssessmentBLL objDal = new AssessmentBLL();
            string name = objAssess.Name;
            string mode = objAssess.Mode;
            string date = objAssess.Date;
            string link = objAssess.Link;
            int marks = objAssess.Marks;
            int trainerId = 1;

            AssessList.Add(new AssessmentInfo()
            {
                Name = name,
                Mode = mode,
                Date = date,
                Link = link,
                Marks = marks,
                TrainerId = trainerId
            });
            objDal.CreateNewAssessment(AssessList);
        }
    }
}

