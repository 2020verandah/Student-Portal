using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Threading.Tasks;
using Imcs_Protal_Asp.Utilities;

namespace StudentAssignments.DAL
{
    public class DAL
    {
        SQLHelper sqlHelper = new SQLHelper();

        public DataSet viewAssignments()
        {
            SqlParameter[] sqlparam = new SqlParameter[1];
            sqlparam[0] = new SqlParameter("@TrainerID", 2);
            DataSet ds = sqlHelper.RunSpReturnDs("sp_Submissions_SELECT_Assignments", sqlparam);
            return ds;
        }

        public int submitAssignment()
        {
            SqlParameter[] sqlparam = new SqlParameter[5];
            sqlparam[0] = new SqlParameter("@StuID", 2);
            sqlparam[0] = new SqlParameter("@AsgID", 1);
            sqlparam[0] = new SqlParameter("@AsgLink", "");
            sqlparam[0] = new SqlParameter("@Result", 0);
            int result = sqlHelper.RunSp("sp_Submissions_UPDATE_Link", sqlparam);
            return result;
        }

        public DataSet viewAssignmentGrades()
        {
            SqlParameter[] sqlparam = new SqlParameter[1];
            sqlparam[0] = new SqlParameter("@StuID", 2);
            DataSet ds = sqlHelper.RunSpReturnDs("sp_AssignmentGrades_SELECT", sqlparam);
            return ds;
        }
        
        public DataSet viewAssessmentGrades()
        {
            SqlParameter[] sqlparam = new SqlParameter[1];
            sqlparam[0] = new SqlParameter("@StuID", 2);
            DataSet ds = sqlHelper.RunSpReturnDs("sp_AssessmentGrades_SELECT", sqlparam);
            return ds;
        }
    }
}
