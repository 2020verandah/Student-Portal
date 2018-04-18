using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using Imcs_Protal_Asp.Utilities;

namespace Imcs_Protal_Asp
{
    public class DAL
    {
        string connstring = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        // SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);

        //SqlConnection conn = new SqlConnection("Server=38.84.37.193;Database=vicky;User Id=vicky_test;Password=Test@123");
        public void CreateNewAssessment(List<AssessmentInfo> assessList)
        {
            //using (SqlConnection conn = new SqlConnection(connstring))
            // {
            //     SqlCommand sqlComm = new SqlCommand("usp_CreateAssessment", conn);
            //     sqlComm.Parameters.AddWithValue("@name", assessList[0].Name);
            //     sqlComm.Parameters.AddWithValue("@mode", assessList[0].Mode);
            //     sqlComm.Parameters.AddWithValue("@postDate", assessList[0].Date);
            //     sqlComm.Parameters.AddWithValue("@link", assessList[0].Link);
            //     sqlComm.Parameters.AddWithValue("@trainer_Id", assessList[0].TrainerId);
            //     sqlComm.Parameters.AddWithValue("@marks", assessList[0].Marks);
            //     sqlComm.Parameters.AddWithValue("@result", 0);
            //     //sqlComm.Parameters.Add("@marks", SqlDbType.Int).Value = assessList[0].Marks;
            // };
            SqlParameter[] sqlparam = new SqlParameter[7];
            sqlparam[0] = new SqlParameter("@name", assessList[0].Name);
            sqlparam[1] = new SqlParameter("@mode", assessList[0].Mode);
            sqlparam[2] = new SqlParameter("@postDate", assessList[0].Date);
            sqlparam[3] = new SqlParameter("@link", assessList[0].Link);
            sqlparam[4] = new SqlParameter("@trainer_Id", assessList[0].TrainerId);
            sqlparam[5] = new SqlParameter("@marks", assessList[0].Marks);
            sqlparam[6] = new SqlParameter("@result", 0);

            SQLHelper sqlHelper = new SQLHelper();
            int resultValue = sqlHelper.RunSql("usp_CreateAssessment", sqlparam);
            //conn.Open();
            //sqlComm.CommandType = CommandType.StoredProcedure;
            //int rows=sqlComm.ExecuteNonQuery();
            //conn.Close();
        }

        public DataSet gvbind()
        {
            using (SqlConnection conn = new SqlConnection(connstring))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("usp_GetallStudentAssessments", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                conn.Close();
                return ds;
            }

        }
    }
}

