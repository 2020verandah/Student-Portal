using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Imcs_Protal_Asp
{
    public class DAL
    {
        private static DAL instance = new DAL();
        //public static SQLHelper getinstance
        //{
        //    get { return instance; }
        //} 
        SqlConnection conn = new SqlConnection("Server=38.84.37.193;Database=vicky;User Id=vicky_test;Password=Test@123");
        public void CreateNewAssessment(List<AssessmentInfo> assessList)
        {
           using (conn)
            {
                SqlCommand sqlComm = new SqlCommand("usp_CreateAssessment", conn);
                sqlComm.Parameters.AddWithValue("@name", assessList[0].Name);
                sqlComm.Parameters.AddWithValue("@mode", assessList[0].Mode);
                sqlComm.Parameters.AddWithValue("@postDate", assessList[0].Date);
                sqlComm.Parameters.AddWithValue("@link", assessList[0].Link);
                sqlComm.Parameters.AddWithValue("@trainer_Id", assessList[0].TrainerId);
                sqlComm.Parameters.AddWithValue("@marks", assessList[0].Marks);
                sqlComm.Parameters.AddWithValue("@result", 0);
                // sqlComm.Parameters.Add("@marks", SqlDbType.Int).Value = assessList[0].Marks; 
                conn.Open();
                sqlComm.CommandType = CommandType.StoredProcedure;
                int rows=sqlComm.ExecuteNonQuery();
                conn.Close();
            }
        }
        public DataSet gvbind()
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