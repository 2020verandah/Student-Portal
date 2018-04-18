using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Imcs_Protal_Asp
{
    public partial class Assignments : System.Web.UI.Page
    {
        private SqlConnection con = null;

        //SQLHelper sh = new SQLHelper();

        protected void Page_Load(object sender, EventArgs e)
        {
            gvAssignments.DataSource = ExecuteSelectCommand();
            gvAssignments.DataBind();
        }

        public DataTable ExecuteSelectCommand()
        {
            //sh.InitCommandForSP("sp_Submissions_SELECT_Assignments");


            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            string query = "select Assignment_Name as Assignment, convert(varchar, Deadline, 101) as Deadline, Marks from tbl_Assignments";
            cmd.CommandText = query;
            DataTable table = new DataTable();

            try
            {
                con.Open();

                SqlDataAdapter da = null;
                using (da = new SqlDataAdapter(cmd))
                {
                    da.Fill(table);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cmd.Dispose();
                cmd = null;
                con.Close();
            }

            return table;
        }

        protected void MenuAssignment_MenuItemClick(object sender, MenuEventArgs e)
        {
            if (MenuAssignment.SelectedItem.Text.Equals("View"))
            {
                pnlView.Visible = true;
                pnlSubmit.Visible = false;
            }

            if (MenuAssignment.SelectedItem.Text.Equals("Submit"))
            {
                pnlSubmit.Visible = true;
                pnlView.Visible = false;
            }
        }
    }
}