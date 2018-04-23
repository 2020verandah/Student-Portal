using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CreateAssignments.BLL
{
    public class PostAssignments
    {
        public int AssignmentID { get; set; }
        public string AssignmentName { get; set; }
        public string AssignmentDeadline { get; set; }
        public string AssignmentLink { get; set; }
        public int AssignmentMarks { get; set; }
        public int TrainerID { get; set; }
    }
}
