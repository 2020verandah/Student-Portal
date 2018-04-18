using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// Variables to inert Feedback into database 
namespace Imcs_Protal_Asp
{
    public class FeedbackUserInfo
    {
       public int Trainerid;
       public int Questionid;
       public int Feedback;
      public Dictionary<int, int> Answers = new Dictionary<int, int>();

    }
}