using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;





namespace Foodorder
{
    public partial class Orderscreen : System.Web.UI.Page
    {
        protected void Food_Entry(object sender, EventArgs e)
        {
            
            //string OrderID= txtOrderID.Text;
         
            string Restaurant = txtRestaurantName.Text; ;
            string Food = txtFoodName.Text;
            string Quantity = txtQuantity.Text;
            string Price = txtPrice.Text;
            SqlConnection cnn;


            string connectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=FoodDB;Integrated Security=True";

            cnn = new SqlConnection(connectionString);
            SqlCommand sqlcommand = new SqlCommand("Food_Entrydetails1", cnn);

            cnn.Open();
            sqlcommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlcommand.Parameters.AddWithValue("@type", "insert");
            //sqlcommand.Parameters.AddWithValue("@OrderID", OrderID);
 
            sqlcommand.Parameters.AddWithValue("@Restaurant", Restaurant);
            sqlcommand.Parameters.AddWithValue("@Food", Food);
            sqlcommand.Parameters.AddWithValue("@Quantity", Quantity);
            sqlcommand.Parameters.AddWithValue("@Price", Price);

            sqlcommand.ExecuteNonQuery();

           // Response.Write("Name: " + Restaurant + "_"+ Food + "_"+ Quantity +"_"+ Price + "hi");
            cnn.Close();

            
            //Response.Write("Name");
        }
    }
}