using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using StudentAssignments.DAL;

namespace Imcs_Protal_Asp
{
    public class StudentAssignmentBLL
    {
        DAL objDAL = new DAL();

        public DataSet viewAssignments()
        {
            return objDAL.viewAssignments();
        }

        //public int submitAssignment(List<SubmissionsInfo> subList)
        //{
        //    return objDAL.UpdateAssignmentLink(subList);
        //}

        public DataSet viewAssignmentGrades()
        {
            return objDAL.viewAssignmentGrades();
        }

        public DataSet viewAssessmentGrades()
        {
            return objDAL.viewAssessmentGrades();
        }

        public int UpdateAssignmentLink(SubmissionsInfo subList)
        {
            return objDAL.UpdateAssignmentLink(subList);
        }
    }
}
