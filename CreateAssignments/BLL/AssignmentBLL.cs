using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using NoteBook.BLL;

namespace NoteBook.DAL
{
    namespace NoteBook.BLL
    {
        public class AssignmentBLL
        {
            DAL objDal = new DAL();
            public void CreateAssignment(List<Assignmentinfo> assignmentlist)
            {
                objDal.CreateAssignment(assignmentlist);
            }
            public void UpdateAssignment(List<Assignmentinfo> assignmentlist)
            {
                objDal.UpdateAssignment(assignmentlist);
            }

            public DataSet ViewAssignments()
            {
                return objDal.ViewAssignments();
            }
            public void DeleteAssignment(List<Assignmentinfo> assignmentlist)
            {
                objDal.DeleteAssignment(assignmentlist);
            }
            public DataSet BestFacultyID()
            {
                return objDal.GetBestFacultyID();
            }
            public DataSet BestfacultyName()
            {
                return objDal.GetBestFacultyName();
            }
            public DataSet BestStudentID()
            {
                return objDal.GetBestStudentID();
            }
            public DataSet BestStudentName()
            {
                return objDal.GetBestStudentName();
            }
            //public DataSet SP_BestStudentIDName()
            //{
            //    return objDal.SP_BestStudentIDName();
            //}

            public DataSet GetFacultyGreetings()
            {
                return objDal.GetFacultyGreetings();
            }
            public DataSet GetStudentGreetings()
            {
                return objDal.GetStudentsGreetings();
            }
        }
    }
}

