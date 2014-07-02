﻿<%@ Page Title="Aran | Bubba Knits" Language="VB" MasterPageFile="~/Site.master"
    AutoEventWireup="false" CodeFile="Aran.aspx.vb" Inherits="Aran" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
  <h1>
  Aran
  </h1>
<center>
      <%--  <asp:DataList ID="DataList1" runat="server" DataSourceID="XmlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
                <div id="itemdiv" style="width: 275px; height: 250px; background-color: white; border: 3px solid white">
                    <center>                        
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#XPath("image")%>' Width="250px" />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text='<%#XPath("title")%>'></asp:Label>
                        <br />
                        <asp:Label ID="Label1" runat="server" Text='<%#XPath("colours")%>'></asp:Label>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text='<%#XPath("sizes")%>'></asp:Label>
                         <div class="pricediv">
                            <asp:Label ID="Label4" runat="server" Text='<%#XPath("price")%>'></asp:Label>
                        </div>
                    </center>
                </div>
            </ItemTemplate>
        </asp:DataList>--%>

          <asp:DataList ID="DataList2" runat="server" DataSourceID="Sqlaran" RepeatColumns="3" RepeatDirection="Horizontal">
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
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="aran.xml"></asp:XmlDataSource>

        <asp:SqlDataSource ID="Sqlaran" runat="server" ConnectionString="<%$ ConnectionStrings:PPConnectionString %>" ProviderName="System.Data.SqlClient"
        SelectCommand="proc_BK_Show_aran" SelectCommandType="StoredProcedure">
    </asp:SqlDataSource>
</asp:Content>
