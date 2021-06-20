<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridDataBind.aspx.cs" Inherits="MasterProj1.GridDataBind" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" AutoGenerateColumns="false" HorizontalAlign="Center" runat="server">
              <Columns>
                <asp:BoundField HeaderText="Emp Id" DataField="Eid"/>
                <asp:BoundField HeaderText="Name" DataField="Name"/>
                <asp:BoundField HeaderText="Department" DataField="Department"/>
                <asp:BoundField HeaderText="Location" DataField="Location"/>
                <asp:BoundField HeaderText="Joining Date" DataField="JoiningDate"/>
                <asp:TemplateField>
                  <ItemTemplate>
                <asp:Button ID="btnSelect" runat="server" Text="Select" CommandArgument='<%#Eval("Eid") %>' OnCommand="btnSelect_Command" />
                  </ItemTemplate>
                </asp:TemplateField>
              </Columns>
              </asp:GridView>

            E_ID : <asp:TextBox ID="txtId" runat="server"/><br />
            Name : <asp:TextBox ID="txtname" runat="server"/><br />
            Department : <asp:TextBox ID="txtdept" runat="server"/><br />
            Location : <asp:TextBox ID="txtloc" runat="server"/><br />
            Joining Date<asp:TextBox ID="txtdate" TextMode="Date" runat="server"/>

            <asp:Label ID="lblname" runat="server" Text=""/>
            <asp:Label ID="lbldep" runat="server" Text=""/>
            <asp:Label ID="lblloc" runat="server" Text=""/>
            
        </div>
    </form>
</body>
</html>
