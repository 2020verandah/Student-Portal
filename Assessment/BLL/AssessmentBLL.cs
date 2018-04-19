using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Imcs_Protal_Asp
{
    public class AssessmentBLL
    {

        DAL objDal = new DAL();
        public void CreateNewAssessment(List<AssessmentInfo> assessList)
        {
            objDal.CreateNewAssessment(assessList);

        }

        public DataSet GetAllAssessments()
        {

            return objDal.GetAllAssessments();
        }

    }
}
