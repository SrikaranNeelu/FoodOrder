using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Foodorder
{
    public partial class OrderDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDropDownList();
            }
        }

        private void BindDropDownList()
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            string query = "select FoodID,Food,Price,Food + ' - ' + CAST(Price AS VARCHAR) AS FoodDisplay from [dbo].[Food_details]"; // Ensure column names are correct

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        conn.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            Foods.DataSource = reader;
                            Foods.DataTextField = "FoodDisplay"; // Ensure this matches your column name
                            
                            Foods.DataValueField = "FoodID";   // Ensure this matches your column name
                          
                          
                            Foods.DataBind();
                        }
                    }
                }

                // Optionally add a default item at the top
                Foods.Items.Insert(0, new ListItem("Select a food item", "0"));
            }
            catch (Exception ex)
            {
                // Handle the exception (log it, show a message to the user, etc.)
                // For now, you might want to use Response.Write for debugging purposes
                Response.Write("Error binding dropdown: " + ex.Message);
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string UserId = txtUserID.Text;
            string Name = Restaurants.SelectedValue;
            string Food = Foods.SelectedValue;
            string Quantity = txtQuantity.Text;
            string Price = txtPrice.Text;

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            try
            {
                using (SqlConnection cnn = new SqlConnection(connectionString))
                {
                    using (SqlCommand sqlcommand = new SqlCommand("Food_Orderdetails", cnn))
                    {
                        sqlcommand.CommandType = CommandType.StoredProcedure;
                        sqlcommand.Parameters.AddWithValue("@type", "insert");
                        //sqlcommand.Parameters.AddWithValue("@OrderID", OrderID); // Uncomment if needed
                        sqlcommand.Parameters.AddWithValue("@UserId", UserId);
                        sqlcommand.Parameters.AddWithValue("@Name", Name);
                        sqlcommand.Parameters.AddWithValue("@Food", Food);
                        sqlcommand.Parameters.AddWithValue("@Quantity", Quantity);
                        sqlcommand.Parameters.AddWithValue("@Price", Price);

                        cnn.Open();
                        sqlcommand.ExecuteNonQuery();
                        Response.Redirect("Homepage.aspx");
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle the exception (log it, show a message to the user, etc.)
                // For now, you might want to use Response.Write for debugging purposes
                Response.Write("Error submitting order: " + ex.Message);
            }
        }
    }
}
