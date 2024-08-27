<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderDetails.aspx.cs" Inherits="Foodorder.OrderDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <h2>Order Form</h2>
     <asp:Table ID="Table1" runat="server" Height="250px" Width="500px">
     <asp:TableRow>
            <asp:TableCell>
                 <asp:Label ID="lblUserID" runat="server" Text="UserID" ></asp:Label>
                </asp:TableCell>
            <asp:TableCell >
                <asp:Textbox ID="txtUserID" runat="server"></asp:Textbox>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
                 <asp:Label ID="lblName" runat="server" Text="Name Of The Restaurnt" ></asp:Label>
                </asp:TableCell>

              <asp:TableCell>
                <asp:DropDownList ID="Restaurants" runat="server" Width="200px">
                    <asp:ListItem Value="Adyar">Adayar</asp:ListItem>
                    <asp:ListItem Value="Sangeetha">Sangeetha</asp:ListItem>
                    <asp:ListItem Value="Geetham">Geetham</asp:ListItem>

                </asp:DropDownList>
            </asp:TableCell>


          
        </asp:TableRow>  
         <asp:TableRow>
            <asp:TableCell>
                 <asp:Label ID="lblFood" runat="server" Text="Food"></asp:Label>
                </asp:TableCell>

               <asp:TableCell>
                <asp:DropDownList ID="Foods" runat="server" Width="200px">
                   

                </asp:DropDownList>
            </asp:TableCell>
            
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
                 <asp:Label ID="lblQuantity" runat="server" Text="Quantity"></asp:Label>
                </asp:TableCell>
            <asp:TableCell >
                <asp:Textbox ID="txtQuantity" runat="server"></asp:Textbox>
            </asp:TableCell>
        </asp:TableRow>  
         <asp:TableRow>
            <asp:TableCell>
                 <asp:Label ID="lblPrice" runat="server" Text="Price"></asp:Label>
                </asp:TableCell>
            <asp:TableCell >
                <asp:Textbox ID="txtPrice" runat="server" ReadOnly="true"></asp:Textbox>
            </asp:TableCell>
        </asp:TableRow>  
         </asp:Table>
    <asp:Button runat="server" ID="btnSubmit" OnClick="Submit_Click" Text="Place Order" />

    <script>
        $(document).ready(function () {
            $('#MainContent_txtQuantity').on('change keyup',function () {
                var qty = $('#MainContent_txtQuantity').val();
                var price = $('#MainContent_Foods').find('option:selected').text();
                var parts = price.split('-');
                var total = qty * parseInt(parts[1]);
                $('#MainContent_txtPrice').val(total);
            });
           
        });
    </script>
</asp:Content>
