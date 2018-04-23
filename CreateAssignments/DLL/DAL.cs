using NoteBook.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using Imcs_Protal_Asp.Utilities;

namespace NoteBook.DAL
{
    public class DAL
    {
        SQLHelper sqlHelper = new SQLHelper();
        public void CreateAssignment(List<Assignmentinfo> Assignmentlist)
        {
            SqlParameter[] sqlparam = new SqlParameter[6];
            sqlparam[0] = new SqlParameter("@AssignmentID", Assignmentlist[0].AssignmentID);
            sqlparam[1] = new SqlParameter("@AssignmentName", Assignmentlist[0].AssignmentName);
            sqlparam[2] = new SqlParameter("@AssignmentDeadline", Assignmentlist[0].AssignmentDeadline);
            sqlparam[3] = new SqlParameter("@AssignmentLink", Assignmentlist[0].AssignmentLink);
            sqlparam[4] = new SqlParameter("@AssignmenMarks", Assignmentlist[0].AssignmenMarks);
            sqlparam[5] = new SqlParameter("@TrainerID", Assignmentlist[0].TrainerID);

            sqlHelper.RunSp("SP_InsertAssignmentData", sqlparam);
        }
        public void UpdateAssignment(List<Assignmentinfo> Assignmentlist)
        {
            SqlParameter[] sqlparam = new SqlParameter[6];
            sqlparam[0] = new SqlParameter("@AssignmentID", Assignmentlist[0].AssignmentID);
            sqlparam[1] = new SqlParameter("@AssignmentName", Assignmentlist[0].AssignmentName);
            sqlparam[2] = new SqlParameter("@AssignmentDeadline", Assignmentlist[0].AssignmentDeadline);
            sqlparam[3] = new SqlParameter("@AssignmentLink", Assignmentlist[0].AssignmentLink);
            sqlparam[4] = new SqlParameter("@AssignmenMarks", Assignmentlist[0].AssignmenMarks);
            sqlparam[5] = new SqlParameter("@TrainerID", Assignmentlist[0].TrainerID);

            sqlHelper.RunSp("SP_UpdateAssignment", sqlparam);
        }
        //internal void CreateAssignment(List<Assignments> assignmentlist)
        //{
        //    throw new NotImplementedException();
        //}
        public DataSet ViewAssignments()
        {
            DataSet ds = sqlHelper.RunSpReturnDs("SP_ViewAssignmentData");
            return ds;
        }
        public void DeleteAssignment(List<Assignmentinfo> Assignmentlist)
        {
            SqlParameter[] sqlparam = new SqlParameter[10];
            sqlparam[0] = new SqlParameter("@AssignmentID", Assignmentlist[0].AssignmentID);
            sqlHelper.RunSp("SP_DeleteAssignments", sqlparam);
        }
        public DataSet GetBestFacultyID()
        {
            DataSet ds = sqlHelper.RunSpReturnDs("SP_GetBestFacultyID");
            return ds;
        }
        public DataSet GetBestFacultyName()
        {
            DataSet ds = sqlHelper.RunSpReturnDs("SP_GetBestFacultyName");
            return ds;
        }
        //public DataSet SP_BestStudentIDName()
        //{
        //    DataSet ds = sqlHelper.RunSpReturnDs("SP_BestStudentIDName");
        //    return ds;
        //}

        public DataSet GetBestStudentID()
        {
            DataSet ds = sqlHelper.RunSpReturnDs("SP_GetBestStudentID");
            return ds;
        }
        public DataSet GetBestStudentName()
        {
            DataSet ds = sqlHelper.RunSpReturnDs("SP_GetBestStudentName");
            return ds;
        }
        public DataSet GetFacultyGreetings()
        {
            DataSet ds = sqlHelper.RunSpReturnDs("SP_GetBestFacultyGreetings");
            return ds;
        }
        public DataSet GetStudentsGreetings()
        {
            DataSet ds = sqlHelper.RunSpReturnDs("SP_GetBestStudentGreetings");
            return ds;
        }
    }
}