<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Userdetails.aspx.cs" Inherits="Foodorder.Userdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Table ID="Table1" runat="server" Height="250px" Width="500px">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblUserID" runat="server" Text="UserID" Width="200px"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
    <asp:TextBox ID="txtUserID" runat="server" Width="200px"></asp:TextBox>
    <asp:RequiredFieldValidator 
        ID="rfvUserID" 
        runat="server" 
        ControlToValidate="txtUserID" 
        ErrorMessage="User ID is required." 
        ForeColor="Red" 
        Display="Dynamic" 
        ValidationGroup="vgSubmit" />
    <asp:RegularExpressionValidator 
        ID="revUserID" 
        runat="server" 
        ControlToValidate="txtUserID" 
        ErrorMessage="Invalid User ID format." 
        ForeColor="Red" 
        Display="Dynamic" 
        ValidationExpression="^[0-9]*$" 
        ValidationGroup="vgSubmit" />
</asp:TableCell>

        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblName" runat="server" Text="Name" Width="200px"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtName" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator1" 
                        runat="server" 
                        ControlToValidate="txtName" 
                        ErrorMessage="Name is required." 
                        ForeColor="Red" 
                        Display="Dynamic" 
                        ValidationGroup="vgSubmit" />
                    <asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator1" 
                        runat="server" 
                        ControlToValidate="txtName" 
                        ErrorMessage="Name contains only Alphabets." 
                        ForeColor="Red" 
                        Display="Dynamic" 
                        ValidationExpression="^[a-zA-Z]*$" 
                        ValidationGroup="vgSubmit" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblPhone" runat="server" Text="Phone Number" Width="200px"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtPhone" runat="server" Width="200px"></asp:TextBox>
                  <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator2" 
                        runat="server" 
                        ControlToValidate="txtPhone" 
                        ErrorMessage="Phone Number is required." 
                        ForeColor="Red" 
                        Display="Dynamic" 
                        ValidationGroup="vgSubmit" />
                    <asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator2" 
                        runat="server" 
                        ControlToValidate="txtPhone" 
                        ErrorMessage="Phone Number Must contains only 10 digits." 
                        ForeColor="Red" 
                        Display="Dynamic" 
                        ValidationExpression="^[6-9]\d{9}$" 
                        ValidationGroup="vgSubmit" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblEmail" runat="server" Text="Email" Width="200px"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator3" 
                        runat="server" 
                        ControlToValidate="txtEmail" 
                        ErrorMessage="Email is required." 
                        ForeColor="Red" 
                        Display="Dynamic" 
                        ValidationGroup="vgSubmit" />
                    <asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator3" 
                        runat="server" 
                        ControlToValidate="txtEmail" 
                        ErrorMessage="Invali Email Format" 
                        ForeColor="Red" 
                        Display="Dynamic" 
                        ValidationExpression="^([a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,})$" 
                        ValidationGroup="vgSubmit" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Button runat="server" OnClick="Submit_Click" ID="btnSubmit" Text="Submit" ValidationGroup="vgSubmit"/>
</asp:Content>
