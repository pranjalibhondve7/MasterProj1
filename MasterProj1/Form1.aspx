<%@ Page Title="" Language="C#" MasterPageFile="~/Page1.Master" AutoEventWireup="true" CodeBehind="Form1.aspx.cs" Inherits="MasterProj1.Form1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--Used Session--%>
    <b>Welcome
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></b><br />
    <br />
  



    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
       
        <Columns>
            <asp:BoundField HeaderText="ID" DataField="Id" />
            <asp:BoundField HeaderText="First Name" DataField="First_Name" />
            <asp:BoundField HeaderText="Email" DataField="Email" />
            <asp:BoundField HeaderText="Mobile No" DataField="Mob_No" />
            <asp:BoundField HeaderText="Fees" DataField="Fees" />
           <%-- <asp:BoundField HeaderText="Adhar Card" DataField="Adhar_Upload" />
            <asp:BoundField HeaderText="Pan Card" DataField="Pan_Upload" />--%>
          <asp:ImageField HeaderText="Adhar Card" DataImageUrlField="Adhar_Upload" ControlStyle-Height="100" ControlStyle-Width="100">
        
            </asp:ImageField>
          <asp:ImageField  HeaderText="Pan Card" DataImageUrlField="Pan_Upload" ControlStyle-Height="100" ControlStyle-Width="100">
          
            </asp:ImageField>
            <asp:TemplateField HeaderText="Block">
                <ItemTemplate>
                    <asp:Button ID="btnselect" runat="server" Text="Select" CssClass="btn btn-primary" CommandArgument='<%# Eval("Id") %>' OnCommand="btnselect_Command" />
                    <asp:Button ID="btnblock" runat="server" Text="Block" CssClass="btn btn-danger" CommandArgument='<%# Eval("Id") %>' OnCommand="btnblock_Command" />
                   <asp:Button ID="btnaccept" runat="server" Text="Accept" CssClass="btn btn-primary" CommandArgument='<%# Eval("Id") %>' OnCommand="btnaccept_Command" />
                <asp:Button ID="btnreject" runat="server" Text="Reject" CssClass="btn btn-danger" CommandArgument='<%# Eval("Id") %>' OnCommand="btnreject_Command" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
  <div class="form-group">
    ID :
    <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
    First Name :
    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
    Email :
    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    Mob_No :
    <asp:TextBox ID="txtmob" runat="server"></asp:TextBox>
    Fees : 
    <asp:TextBox ID="txtfees" runat="server"></asp:TextBox>
    BlockReason 
    <asp:TextBox ID="txtblockreason" runat="server"></asp:TextBox>
  </div>
    <asp:Button ID="btnupdate" runat="server" CssClass="btn btn-primary" Text="Update" OnClick="btnupdate_Click" />

    <asp:Button ID="btnlogout" runat="server" CssClass="btn btn-danger" Text="Log Out" OnClick="btnlogout_Click" />
</asp:Content>
