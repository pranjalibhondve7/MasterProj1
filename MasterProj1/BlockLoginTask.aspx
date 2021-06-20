<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BlockLoginTask.aspx.cs" Inherits="MasterProj1.BlockLoginTask" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Task Page</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: antiquewhite;
            /*text-decoration-color:white;*/
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>LOGIN</h1>
            <div class="row form-group">
                <asp:Label ID="Label1" runat="server" Text="Choose Account : "></asp:Label>
                <asp:DropDownList ID="DropDownList1" CssClass="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>User
                    </asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="row form-group">
                <b>Username :</b>
                <asp:TextBox ID="txtuser" placeholder="Enter Email or Username" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="row form-group">
                <b>Password :</b>
                <asp:TextBox ID="txtpass" TextMode="Password" placeholder="Enter Password" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="q">
                <asp:Button ID="btnsubmit" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
            </div>
        </div>
    </form>
</body>
</html>
