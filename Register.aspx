<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label3" runat="server" Text="Enter Email"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label4" runat="server" Text="Enter License Number"></asp:Label>
            <asp:TextBox ID="txtLicense" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label5" runat="server" Text="Enter Make"></asp:Label>
            <asp:TextBox ID="txtMake" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label6" runat="server" Text="Enter Vehicle Year"></asp:Label>
            <asp:TextBox ID="txtYear" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label7" runat="server" Text="Enter Password"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />

            <asp:Label ID="Label8" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox><br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
            <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
        </p>
    </div>
    </form>
</body>
</html>
