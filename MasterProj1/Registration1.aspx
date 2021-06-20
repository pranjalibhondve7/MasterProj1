<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration1.aspx.cs" Inherits="MasterProj1.Registration1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleSheet1.css" rel="stylesheet" />
    <title>User Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container con">
            <h1 class="text-center">User Register</h1>
            <div class="row form-group">
                <div class="col-md-4">
                    <asp:Label ID="Label1" runat="server" Text="ID :"></asp:Label>
                    <asp:TextBox ID="Id" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="Label3" runat="server" Text=" First Name :"></asp:Label>
                    <asp:TextBox ID="txtfname" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="Label4" runat="server" Text="Last Name :"></asp:Label>
                    <asp:TextBox ID="txtlname" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-4">

                    <asp:Label ID="Label5" runat="server" Text="DOB :"></asp:Label>
                    <asp:TextBox ID="txtdob" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-4">

                    <asp:Label ID="Label6" runat="server" Text="Email :"></asp:Label>
                    <asp:TextBox ID="txtemail" TextMode="Email" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="Label7" runat="server" Text=" Mobile No :"></asp:Label>
                    <asp:TextBox ID="txtmobno" TextMode="Phone" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-4">
                    <asp:Label ID="Label2" runat="server" Text="Gender :  "></asp:Label>
                    <asp:RadioButton ID="rbmale" Text="Male" runat="server" GroupName="Gender" />
                    <asp:RadioButton ID="rbfemale" Text="Female" runat="server" GroupName="Gender" />
                    <asp:RadioButton ID="rbother" Text="Other" runat="server" GroupName="Gender" />
                </div>
                <div class="col-md-4">
                    <asp:Label ID="Label8" runat="server" Text="Address : "></asp:Label>
                    <asp:TextBox ID="txtaddress" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="Label9" runat="server" Text=" Country : "></asp:Label>
                    <asp:DropDownList ID="ddlcountry" AutoPostBack="true" CssClass="form-control" runat="server">
                        <asp:ListItem>--Select Country--</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>Pakistan</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>

                    </asp:DropDownList>

                </div>
            </div>

            <div class="row form-group">
                <div class="col-md-4">
                    <asp:Label ID="Label10" runat="server" Text=" State : "></asp:Label>
                    <asp:DropDownList ID="ddlstate" AutoPostBack="true" CssClass="form-control" runat="server">
                        <asp:ListItem>--Select State--</asp:ListItem>
                        <asp:ListItem>Maharashtra</asp:ListItem>
                        <asp:ListItem>Uttarpradesh</asp:ListItem>
                        <asp:ListItem>Uttarakhand</asp:ListItem>
                        <asp:ListItem>Madhya Pradesh</asp:ListItem>
                        <asp:ListItem>Kerala</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="Label11" runat="server" Text=" City : "></asp:Label>
                    <asp:DropDownList ID="ddlcity" AutoPostBack="true" CssClass="form-control" runat="server">
                        <asp:ListItem>--Select City--</asp:ListItem>
                        <asp:ListItem>Nagpur</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Pune</asp:ListItem>
                        <asp:ListItem>Raigad</asp:ListItem>
                        <asp:ListItem>Ahmadabad</asp:ListItem>
                        <asp:ListItem>Raipur</asp:ListItem>
                        <asp:ListItem>Bilaspur</asp:ListItem>
                        <asp:ListItem>Gondia</asp:ListItem>
                        <asp:ListItem>Akola</asp:ListItem>
                        <asp:ListItem>Ahmadnagar</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="Label12" runat="server" Text="Pin Code : "></asp:Label>
                    <asp:TextBox ID="txtpin" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="row form-group">
                <div class="col-md-4">
                    <asp:Label ID="Label13" runat="server" Text=" Fees : "></asp:Label>
                    <asp:TextBox ID="txtfees" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="Label15" runat="server" Text=" Username : "></asp:Label>
                    <asp:TextBox ID="txtuser" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="Label14" runat="server" Text=" Password : "></asp:Label>
                    <asp:TextBox ID="txtpass" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="row form-group">
                <div class="col-md-4">
                    <asp:Label ID="Label16" runat="server" Text=" Upload Adhar Card : "></asp:Label>
                    <asp:FileUpload ID="fuAdhar" runat="server" />
                </div>
               
                <div class="col-md-4">
                    <asp:Label ID="Label17" runat="server" Text=" Upload Pan Card : "></asp:Label>
                    <asp:FileUpload ID="fupan" runat="server" />
                </div>              
        </div>

        <div class="row">
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Do you Agree with All terms and conditions" />
        </div>

        <div class="q">
            <asp:Button ID="btnsubmit" CssClass="btn btn-primary" runat="server" Text="Register" OnClick="btnsubmit_Click" />
            <asp:Button ID="btnlogin" CssClass="btn btn-danger" runat="server" Text="Login" OnClick="btnlogin_Click" />
        </div>
        </div>
    </form>
</body>
</html>
