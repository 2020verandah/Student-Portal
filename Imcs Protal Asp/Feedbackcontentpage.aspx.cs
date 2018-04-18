using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Imcs_Protal_Asp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FeedbackUserInfo fui = new FeedbackUserInfo();
            DAL dAL = new DAL();


            fui.Answers.Add(int.Parse(HFQ1.Value), int.Parse(RBL1.SelectedValue));
            fui.Answers.Add(int.Parse(HFQ2.Value), int.Parse(RBL2.SelectedValue));
            fui.Answers.Add(int.Parse(HFQ3.Value), int.Parse(RBL3.SelectedValue));
            fui.Answers.Add(int.Parse(HFQ4.Value), int.Parse(RBL4.SelectedValue));
            fui.Answers.Add(int.Parse(HFQ5.Value), int.Parse(RBL5.SelectedValue));
            fui.Answers.Add(int.Parse(HFQ6.Value), int.Parse(RBL6.SelectedValue));
            fui.Answers.Add(int.Parse(HFQ7.Value), int.Parse(RBL7.SelectedValue));
            fui.Answers.Add(int.Parse(HFQ8.Value), int.Parse(RBL8.SelectedValue));
            fui.Answers.Add(int.Parse(HFQ9.Value), int.Parse(RBL9.SelectedValue));
            foreach (KeyValuePair<int, int> pair in fui.Answers)
            {
                fui.Trainerid = int.Parse(DDLtrainer.SelectedItem.Value);
                fui.Questionid = pair.Key;
                fui.Feedback = pair.Value;
                //fui.ConnectionDB();
                dAL.SaveFeedback();
            }
        }
    }
}