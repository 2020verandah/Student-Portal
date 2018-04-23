using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CreateAssignments.BLL;


namespace NoteBook
{
    public partial class Assignments : System.Web.UI.Page
    {
        List<Assignmentinfo> assignmentlist = new List<Assignmentinfo>();
        AssignmentBLL objbll = new AssignmentBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
            } 
        }
        public void Clear()
        {
            txt_AssignmentDeadline.Text = "";
            txt_AssignmentID.Text = "";
            txt_AssignmentName.Text = "";
            txt_Assignment_Marks.Text = "";
            //FileUpload_SelectAssignmentLink. = 
            txt_TrainerID.Text = "";
        }
        protected void btn_Clear_Click(object sender, EventArgs e)
        {
            Clear();
            lbl_AssignmentStatus.Text = "Enter Data...";
        }
        protected void btn_AssignmentPost_Click(object sender, EventArgs e)
        {
            int AssignmentID = Convert.ToInt32(txt_AssignmentID.Text);
            string AssignmentName = txt_AssignmentName.Text;
            string AssignmentDeadline = txt_AssignmentDeadline.Text;
            string AssignmentLink = Server.MapPath(FileUpload_SelectAssignmentLink.FileName);
            int AssignmenMarks = Convert.ToInt32(txt_Assignment_Marks.Text);
            int TrainerID = Convert.ToInt32(txt_TrainerID.Text); ;
            assignmentlist.Add(new Assignmentinfo()
            {
                AssignmentID= AssignmentID,
                AssignmentName= AssignmentName,
                AssignmentDeadline= AssignmentDeadline,
                AssignmentLink= AssignmentLink,
                AssignmenMarks= AssignmenMarks,
                TrainerID= TrainerID
            });
            objbll.CreateAssignment(assignmentlist);
            lbl_AssignmentStatus.Text = "Assignment Posted";
        }
        protected void btn_AssignmentView_Click(object sender, EventArgs e)
        {
            GridView_GetAssignmentsData.DataSource = objbll.ViewAssignments();
            GridView_GetAssignmentsData.DataBind();
            Clear();
        }
        protected void btn_AssignmentUpdate_Click(object sender, EventArgs e)
        {
            int AssignmentID = Convert.ToInt32(txt_AssignmentID.Text);
            string AssignmentName = txt_AssignmentName.Text;
            string AssignmentDeadline = txt_AssignmentDeadline.Text;
            string AssignmentLink = Server.MapPath(FileUpload_SelectAssignmentLink.FileName);
            int AssignmenMarks = Convert.ToInt32(txt_Assignment_Marks.Text);
            int TrainerID = Convert.ToInt32(txt_TrainerID.Text);

            assignmentlist.Add(new Assignmentinfo()
            {
                AssignmentID = AssignmentID,
                AssignmentName = AssignmentName,
                AssignmentDeadline = AssignmentDeadline,
                AssignmentLink = AssignmentLink,
                AssignmenMarks = AssignmenMarks,
                TrainerID = TrainerID
            });
            objbll.UpdateAssignment(assignmentlist);
            lbl_AssignmentStatus.Text = "Assignment Updated";
            //[SP_UpdateAssignment]
        }
        protected void btn_AssignmentDelete_Click(object sender, EventArgs e)
        {
            
            if (txt_AssignmentID.Text=="")
            {
                lbl_AssignmentStatus.Text = "please Provide Assignmentid";
            }
            else
            {
                int AssignmentID = Convert.ToInt32(txt_AssignmentID.Text);
                assignmentlist.Add(new Assignmentinfo()
                {
                    AssignmentID = AssignmentID,
                });
                objbll.DeleteAssignment(assignmentlist);
                lbl_AssignmentStatus.Text = "Deleted...";
                Clear(); 
            }
        }
    }
}