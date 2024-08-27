using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Foodorder
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTable();
            }
        }

        private void BindTable()
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            string query = "select OrderID,a.Name,a.Food,a.Quantity,a.Price,b.Food as FoodName from order_details as a inner join [dbo].[Food_details] as b on a.Food=b.FoodID"; // Adjust query based on your table structure

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlDataAdapter adapter = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                foreach (DataRow row in dt.Rows)
                {
                    TableRow tableRow = new TableRow();

                    TableCell nameCell = new TableCell();
                    nameCell.Text = row["Name"].ToString();
                    tableRow.Cells.Add(nameCell);

                    TableCell foodCell = new TableCell();
                    foodCell.Text = row["FoodName"].ToString();
                    tableRow.Cells.Add(foodCell);

                    TableCell priceCell = new TableCell();
                    priceCell.Text = row["Price"].ToString();
                    tableRow.Cells.Add(priceCell);

                    TableCell quantityCell = new TableCell();
                    quantityCell.Text = row["Quantity"].ToString();
                    tableRow.Cells.Add(quantityCell);

                    TableCell actionCell = new TableCell();
                    string orderId = row["OrderID"].ToString();
                    string cancelUrl = "Cancelorder.aspx?orderId=" +orderId;
                    HyperLink cancelLink = new HyperLink();
                    cancelLink.ID = "lnkCancel_" + orderId;
                    cancelLink.Text = "Cancel";
                    cancelLink.NavigateUrl = cancelUrl;
                    cancelLink.CssClass = "cancel-link";
                    actionCell.Controls.Add(cancelLink);
                    tableRow.Cells.Add(actionCell);
                    OrderTable.Rows.Add(tableRow);
                }
            }
        }

        protected void AddOrder(object sender, EventArgs e)
        {
            Response.Redirect("OrderDetails.aspx");
        }

       
    }
}
