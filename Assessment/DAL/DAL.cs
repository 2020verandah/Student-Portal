using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Imcs_Protal_Asp.Utilities;

namespace Imcs_Protal_Asp
{
    public class DAL
    {
        
        SQLHelper sqlHelper = new SQLHelper();

        /// <summary>
        /// Create new Assessment
        /// </summary>
        /// <param name="assessList">List of objects</param>        
        /// <returns>DataSet</returns>
        public void CreateNewAssessment(List<AssessmentInfo> assessList)
        {
            SqlParameter[] sqlparam = new SqlParameter[7];
            sqlparam[0] = new SqlParameter("@name", assessList[0].Name);
            sqlparam[1] = new SqlParameter("@mode", assessList[0].Mode);
            sqlparam[2] = new SqlParameter("@postDate", assessList[0].Date);
            sqlparam[3] = new SqlParameter("@link", assessList[0].Link);
            sqlparam[4] = new SqlParameter("@trainer_Id", assessList[0].TrainerId);
            sqlparam[5] = new SqlParameter("@marks", assessList[0].Marks);
            sqlparam[6] = new SqlParameter("@result", 0);


            int resultValue = sqlHelper.RunSp("usp_CreateAssessment", sqlparam);

        }

        public DataSet GetAllAssessments()
        {
            DataSet ds = sqlHelper.RunSpReturnDs("usp_GetallStudentAssessments");
            return ds;
        }

       


        
    }
}

