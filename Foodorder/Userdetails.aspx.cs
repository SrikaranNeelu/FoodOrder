
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Foodorder
{
	public partial class Userdetails : System.Web.UI.Page
	{

		protected void Submit_Click(object sender, EventArgs e)
	{
           
            string UserId = txtUserID.Text;
            string Name = txtName.Text;
            string Email = txtEmail.Text;
            string Phone = txtPhone.Text;
            SqlConnection cnn;
        
           

            string connectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=FoodDB;Integrated Security=True";


 
                cnn = new SqlConnection(connectionString);
            SqlCommand sqlcommand = new SqlCommand("Food_Order", cnn);

            cnn.Open();
            sqlcommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlcommand.Parameters.AddWithValue("@type", "insert");
            sqlcommand.Parameters.AddWithValue("@UserId", UserId);
            sqlcommand.Parameters.AddWithValue("@Name", Name);
            sqlcommand.Parameters.AddWithValue("@Phone", Phone);
            sqlcommand.Parameters.AddWithValue("@Email", Email);
           
            sqlcommand.ExecuteNonQuery();

            //Response.Write("Name: " + Name+"_"+ UserId+"_"+ Email+"_"+ Phone+"hi");
            cnn.Close();
            Response.Redirect("OrderDetails.aspx");

        }
}
}


/*
using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace Foodorder
{
    public partial class Userdetails : System.Web.UI.Page
    {
        protected void Submit_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=FoodDB;Integrated Security=True";

            SqlConnection cnn = null;

            try
            {
                cnn = new SqlConnection(connectionString);
                cnn.Open();
                Response.Write("Connection Made");
            }
            catch (SqlException sqlEx)
            {
                // Handle SQL Server specific errors
                Response.Write("SQL Error: " + sqlEx.Message);
            }
            catch (Exception ex)
            {
                // Handle general errors
                Response.Write("Error: " + ex.Message);
            }
            finally
            {
                if (cnn != null && cnn.State == System.Data.ConnectionState.Open)
                {
                    cnn.Close();
                }
            }
        }
    }
}*/
