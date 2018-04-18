using System;

namespace Imcs_Protal_Asp
{
    public partial class ManageUsers : System.Web.UI.Page
    {

        DAL dal = new DAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            grdUsers.DataSource = dal.getUsers();
            grdUsers.DataBind();
            ////Create the parameter 
            //SqlParameter parameter = new SqlParameter("@uout", SqlDbType.int);

            ////Set the parameter direction as output
            //parameter.Direction = ParameterDirection.Output;

            //sqlCommand.Parameters.Add(parameter);

            //SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlCommand);
            //sqlAdapter.Fill(dataSet);

            ////Fetch the output parameter after doing the Fill
            //string outputValue = Convert.ToString(parameter.Value);

        }
    }
}