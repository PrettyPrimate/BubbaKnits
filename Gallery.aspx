<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Gallery.aspx.vb" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<table width="100%">
<tr>
<td align="center">
    <asp:Image ID="Image1" runat="server" Height="167px" Width="150px" ImageUrl="~/Images/blanket1.png" />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Baby Blanket"></asp:Label>
</td>
<td align="center">
    <asp:Image ID="Image2" runat="server" Height="167px" Width="150px" ImageUrl="~/Images/blanket2.png" />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Baby Blanket"></asp:Label>
</td>
<td align="center">
    <asp:Image ID="Image3" runat="server" Height="167px" Width="150px" ImageUrl="~/Images/blanket3.png" />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Baby Blanket"></asp:Label>
</td>
</tr>

</table>

</asp:Content>

