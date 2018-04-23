using CreateAssignments.BLL;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Imcs_Protal_Asp
{
    public partial class PostAssignment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static PostAssignments ViewAssignment()
        {
            AssignmentBLL objbll = new AssignmentBLL();
            PostAssignments view = new PostAssignments();
            view.AssignmentID = Convert.ToInt32(objbll.ViewAssignments().Tables[0].Rows[0]["AssignmentID"].ToString());
            view.AssignmentName = objbll.ViewAssignments().Tables[0].Rows[0]["AssignmentName"].ToString();
            view.AssignmentDeadline = objbll.ViewAssignments().Tables[0].Rows[0]["AssignmentDeadline"].ToString();
            view.AssignmentDeadline = objbll.ViewAssignments().Tables[0].Rows[0]["AssignmentLink"].ToString();
            view.AssignmentMarks = Convert.ToInt32(objbll.ViewAssignments().Tables[0].Rows[0]["AssignmenMarks"].ToString());
            view.TrainerID = Convert.ToInt32(objbll.ViewAssignments().Tables[0].Rows[0]["TrainerID"].ToString());

            return view;
        }
    }
}