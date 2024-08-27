using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Foodorder
{
    public partial class Cancelorder : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve the OrderID from the query string
                string orderId = Request.QueryString["orderId"];

                // Check if the orderId is not null or empty
                if (!string.IsNullOrEmpty(orderId))
                {
                    // Set the value of the hidden field
                    hfOrderId1.Value = orderId;
                }
            }
        }


        protected void Cancel_Order(object sender, EventArgs e)
        {
            


            string OrderID= hfOrderId1.Value;

            string UserId = txtUserID.Text; ;
            string Food = Foods.SelectedValue;
 
            SqlConnection cnn;


            string connectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=FoodDB;Integrated Security=True";

            cnn = new SqlConnection(connectionString);
            SqlCommand sqlcommand = new SqlCommand("Food_Orderdetails", cnn);

            cnn.Open();
            sqlcommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlcommand.Parameters.AddWithValue("@type", "delete");
            sqlcommand.Parameters.AddWithValue("@UserId", UserId);

            sqlcommand.Parameters.AddWithValue("@Name", "");
            sqlcommand.Parameters.AddWithValue("@Food",OrderID);
            sqlcommand.Parameters.AddWithValue("@Quantity", 0);
            sqlcommand.Parameters.AddWithValue("@Price", 0);

            sqlcommand.ExecuteNonQuery();

           // Response.Write("Name: " + Restaurant + "_"+ Food + "_"+ Quantity +"_"+ Price + "hi");
            cnn.Close();
            Response.Redirect("Homepage.aspx");

            //Response.Write(Food);
        }
    }
}