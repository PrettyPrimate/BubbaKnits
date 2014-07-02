<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Events.aspx.vb" Inherits="Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <h1>
        Events
    </h1>
    <h2>
        Upcoming Events
    </h2>
    <br />
    <div class="events">
        <asp:DataList ID="futureDL" runat="server" DataSourceID="Sqlfuture" RepeatColumns="1" RepeatDirection="Vertical">
            <ItemTemplate>
                <div id="itemdiv" class="eventdiv">
                    <div class="eventText">
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("event_date")%>' CssClass="eventdate"></asp:Label>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("times")%>' CssClass="eventtime"></asp:Label>
                        <br />
                        <a href='<%# Eval("event_url") %>' title='<%# Eval("title") %>' target="_blank">
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("title")%>' CssClass="eventurl"></asp:Label>
                        </a>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("address")%>' CssClass="eventadd"></asp:Label>
                    </div>
                    <div class="eventImg">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image_url")%>' CssClass="eventimg" />
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <hr />
    <h2>
        Past Events
    </h2>
    <br />
    <div class="events">
        <asp:DataList ID="pastDL" runat="server" DataSourceID="Sqlpast" RepeatColumns="1" RepeatDirection="Vertical">
            <ItemTemplate>
                <div id="itemdiv" class="eventdiv">
                    <div class="eventText">
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("event_date")%>' CssClass="eventdate"></asp:Label>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("times")%>' CssClass="eventtime"></asp:Label>
                        <br />
                        <a href='<%# Eval("event_url") %>' title='<%# Eval("title") %>' target="_blank">
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("title")%>' CssClass="eventurl"></asp:Label>
                        </a>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("address")%>' CssClass="eventadd"></asp:Label>
                    </div>
                    <div class="eventImg">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image_url")%>' CssClass="eventimg" />
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>

    <asp:SqlDataSource ID="Sqlfuture" runat="server" ConnectionString="<%$ ConnectionStrings:PPConnectionString %>" ProviderName="System.Data.SqlClient"
        SelectCommand="proc_BK_Events_Future" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    <asp:SqlDataSource ID="Sqlpast" runat="server" ConnectionString="<%$ ConnectionStrings:PPConnectionString %>" ProviderName="System.Data.SqlClient"
        SelectCommand="proc_BK_Events_Past" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</asp:Content>
