<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cancelorder.aspx.cs" Inherits="Foodorder.Cancelorder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Table ID="Table1" runat="server" Height="250px" Width="500px">
        <asp:TableRow>
            <asp:TableCell>
                <asp:HiddenField ID="hfOrderId1" runat="server" />

                <asp:Label ID="lblUserID" runat="server" Text="UserID" ></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblFoodName" runat="server" Text="FoodName" ></asp:Label>
            </asp:TableCell>
             <asp:TableCell>
                <asp:DropDownList ID="Foods" runat="server" Width="200px">
                    <asp:ListItem Value="1">Dosa</asp:ListItem>
                    <asp:ListItem Value="2">Idly</asp:ListItem>
                    <asp:ListItem Value="3">Pongal</asp:ListItem>

                </asp:DropDownList>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
     <asp:Button runat="server" OnClick="Cancel_Order" ID="btnSubmit" Text="CancelOrder" />
</asp:Content>
