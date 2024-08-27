<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Foodorder.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .order-table{
            width:100%;
        }
        h2{
            color:red;
        }
        .table-head{
            padding:10px 20px;
        }
       .btn-primary {
           float:right;
    background-color: #007bff; /* Primary color (blue) */
    color: #ffffff; /* Text color (white) */
    border: 1px solid #007bff; /* Border color matching the background */
    border-radius: 1rem; /* Slightly rounded corners */
    padding: 0.5rem 1rem; /* Padding around the text */
    font-size: 1rem; /* Font size */
    font-weight: 500; /* Medium font weight */
    text-align: center; /* Centered text */
    text-decoration: none; /* Remove underline from text */
    display: inline-block; /* Inline block for spacing */
    cursor: pointer; /* Pointer cursor on hover */
    transition: background-color 0.15s ease-in-out, border-color 0.15s ease-in-out; /* Smooth transition */
}


    </style>
    <h2>Home Page</h2>
    <asp:Button CssClass="btn-primary" ID="SumbitButton" runat="server" Text="Add" OnClick="AddOrder" />
    
    <asp:Table ID="OrderTable" CssClass="order-table" border="3" runat="server">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell CssClass="table-head">Restaurant Name</asp:TableHeaderCell>
            <asp:TableHeaderCell>Food Name</asp:TableHeaderCell>
            <asp:TableHeaderCell>Price</asp:TableHeaderCell>
            <asp:TableHeaderCell>Quantity</asp:TableHeaderCell>
            <asp:TableHeaderCell>Action</asp:TableHeaderCell>
        </asp:TableHeaderRow>
      
    </asp:Table>

</asp:Content>
