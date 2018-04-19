using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Imcs_Protal_Asp
{
    public class SubmissionsInfo
    {
        private int _SubID;
        private int _StuID;
        private int _AsgID;
        private int _AsgStatus;
        private string _AsgLink;
        private int _AsgMarks;
        private string _AsgFeedback;

        public int SubID { get =>_SubID; set => _SubID = value; }
        public int StuID { get => _StuID; set => _StuID = value; }
        public int AsgID { get => _AsgID; set => _AsgID = value; }
        public int AsgStatus { get => _AsgStatus; set => _AsgStatus = value; }
        public string AsgLink { get => _AsgLink; set => _AsgLink = value; }
        public int AsgMarks { get => _AsgMarks; set => _AsgMarks = value; }
        public string AsgFeedback { get => _AsgFeedback; set => _AsgFeedback = value; }
    }
}