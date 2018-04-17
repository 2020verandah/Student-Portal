using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Imcs_Protal_Asp
{
    public class AssessmentInfo
    {
        //private int AssessID;        
        private string assessName;
        private string assessMode;
        private string assessDate;
        private string assessLink;
        private int assessMarks;
        private int assessTrainerId;
        //private List<Options> userOptions = new List<Options>();



        public string Name
        {
            get { return assessName; }
            set { assessName = value; }
        }
        public string Mode
        {
            get { return assessMode; }
            set { assessMode = value; }
        }
        public string Date
        {
            get { return assessDate; }
            set { assessDate = value; }
        }
        public string Link
        {
            get { return assessLink; }
            set { assessLink = value; }
        }
        public int Marks
        {
            get { return assessMarks; }
            set { assessMarks = value; }
        }
        public int TrainerId
        {
            get { return assessTrainerId; }
            set { assessTrainerId = value; }
        }
    }

   public class  ModeOptions
    {
        string assessMode;
        public string Mode
        {
            get { return assessMode; }
            set { assessMode = value; }
        }
    }


}