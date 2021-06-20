<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demologin.aspx.cs" Inherits="MasterProj1.demologin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Loginstylesheet.css" rel="stylesheet" />
    <title>Stylish Login Page</title>

</head>
<body>

    <div class="loginbox">
      
        <img src="images/7.png" alt="Alternate text" class="user" />
        <h2>Log In Here</h2>
        
        <form id="form1" runat="server">
          <%--<asp:Label ID="Label3" CssClass="lbllogin" runat="server" Text="Select User :"></asp:Label>
            <asp:DropDownList ID="DropDownList1" CssClass="ddl1"   runat="server">
               <asp:ListItem>---SELECT---</asp:ListItem>
               <asp:ListItem>ADMIN</asp:ListItem>
               <asp:ListItem>USER</asp:ListItem>
            </asp:DropDownList><br />--%>
            <asp:Label ID="Label1" CssClass="lblemail" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="TextBox1" CssClass="txtemail" TextMode="Email" placeholder="Enter Email" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" CssClass="lblpass" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox2" CssClass="txtpass" TextMode="Password" placeholder="*************" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" CssClass="btnsubmit"  runat="server" Text="Sign In" />
            <asp:LinkButton ID="LinkButton1" CssClass="btnforget" runat="server">Forget Password</asp:LinkButton>
        </form>
    </div>

</body>
</html>
