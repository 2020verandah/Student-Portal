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

        SQLHelper sqlHelper = new SQLHelper();
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

        

            public void SaveFeedback()
            {
                FeedbackUserInfo fui = new FeedbackUserInfo(); //to get the variables
                string FdConnstring = WebConfigurationManager.ConnectionStrings["StudentPortal"].ConnectionString;
                using (SqlConnection con = new SqlConnection(FdConnstring))
                {
                    con.Open();
                    using (SqlCommand setcmd = new SqlCommand("sp_SetFeedback", con))
                    {
                        setcmd.CommandType = CommandType.StoredProcedure;
                        setcmd.Parameters.AddWithValue("@trainerid", fui.Trainerid);
                        setcmd.Parameters.AddWithValue("@questionid", fui.Questionid);
                        setcmd.Parameters.AddWithValue("@feedback", fui.Feedback);
                        setcmd.ExecuteNonQuery();
                    }
                }

            }
        
    }
}

