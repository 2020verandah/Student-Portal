namespace CreateAssignments.BLL
{
    public class Assignmentinfo
    {
        private int AssignmentiD;
        private string Assignmentname;
        private string Assignmentdeadline;
        private string Assignmentlink;
        private int Assignmentmarks;
        private int TraineriD;

        public int AssignmentID {
            get { return AssignmentiD; }
            set { AssignmentiD = value; }
        }
        public string AssignmentName
        {
            get { return Assignmentname; }
            set { Assignmentname = value; }
        }
        public string AssignmentDeadline
        {
            get { return Assignmentdeadline; }
            set { Assignmentdeadline = value; }
        }
        public string AssignmentLink
        {
            get { return Assignmentlink; }
            set { Assignmentlink = value; }
        }
        public int AssignmenMarks
        {
            get { return Assignmentmarks; }
            set { Assignmentmarks = value; }
        }
        public int TrainerID
        {
            get { return TraineriD; }
            set { TraineriD = value; }
        }
    }
}