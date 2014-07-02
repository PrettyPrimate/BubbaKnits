<%@ Page Title="Unisex | Bubba Knits" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Unisex.aspx.vb" Inherits="Unisex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">


<div id="somediv" style="width: 400px;">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="XmlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">
            <ItemTemplate>
                <div id="itemdiv" style="width: 300px; height: 250px; background-color: white; border: 3px solid white">
                    <center>                        
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#XPath("image")%>' Width="250px" />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text='<%#XPath("title")%>'></asp:Label>
                        <br />
                        <asp:Label ID="Label1" runat="server" Text='<%#XPath("colours")%>'></asp:Label>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text='<%#XPath("sizes")%>'></asp:Label>
                    </center>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="unisex.xml"></asp:XmlDataSource>


</asp:Content>

