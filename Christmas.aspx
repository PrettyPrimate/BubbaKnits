<%@ Page Title="Girls | Bubba Knits" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Christmas.aspx.vb" Inherits="Christmas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<h1>
Christmas
</h1>

<center>
               <asp:DataList ID="xmasDL" runat="server" DataSourceID="Sqlxmas" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
                <div id="itemdiv" class="itemdiv">
                    <center>                        
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image_url")%>' Width="250px" />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("title_desc")%>'></asp:Label>
                        <br />
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("colours")%>'></asp:Label>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("sizes")%>'></asp:Label>
                        <div class="pricediv">
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("price")%>'></asp:Label>
                        </div>
                    </center>
                </div>
            </ItemTemplate>
        </asp:DataList>

    </center>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="girls.xml"></asp:XmlDataSource>

     <asp:SqlDataSource ID="Sqlxmas" runat="server" ConnectionString="<%$ ConnectionStrings:PPConnectionString %>" ProviderName="System.Data.SqlClient"
        SelectCommand="proc_BK_Show_xmas" SelectCommandType="StoredProcedure">
    </asp:SqlDataSource>
</asp:Content>

