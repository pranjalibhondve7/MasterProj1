<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridData2.aspx.cs" Inherits="MasterProj1.GridData2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">

                <Columns>
                    <%--<asp:BoundField HeaderText="Employee ID" DataField="Eid" />--%>
                    <asp:BoundField HeaderText="Name" DataField="Name" />
                    <%--<asp:BoundField HeaderText="Department" DataField="Department" />
                    <asp:BoundField HeaderText="Location" DataField="Location" />
                    <asp:BoundField HeaderText="JoiningDate" DataField="JoiningDate" />--%>
                </Columns>

            </asp:GridView>
        </div>
    </form>
</body>
</html>
