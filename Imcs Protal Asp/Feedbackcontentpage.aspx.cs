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
        //public object AlertBoxMessage { get; private set; }
        //public object AlertBox { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FeedbackUserInfo fui = new FeedbackUserInfo();
            UserBLL dAL = new UserBLL();


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
                dAL.SaveFeedback(fui);
            }

            Reset_Click();
            Panel1.Visible = false;
            Panel2.Visible = true;
            //MessageBoxShow("Feedback Submited");
           
        }

        //private void MessageBoxShow(string message)
        //{
        //    AlertBoxMessage = message;

        //}

        protected void Reset_Click()
        {
            
            DDLtrainer.SelectedValue = "0";
            RBL1.ClearSelection();
            RBL2.ClearSelection();
            RBL3.ClearSelection();
            RBL4.ClearSelection();
            RBL5.ClearSelection();
            RBL6.ClearSelection();
            RBL7.ClearSelection();
            RBL8.ClearSelection();
            RBL9.ClearSelection();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }
    }
}