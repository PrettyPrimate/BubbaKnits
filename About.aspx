<%@ Page Title="About Us | Bubba Knits" Language="VB" MasterPageFile="~/Site.Master"
    AutoEventWireup="false" CodeFile="About.aspx.vb" Inherits="About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<h1>
About
</h1>
    <div style="text-align: center">
        <asp:Label ID="Label1" runat="server">I am a small business, in Rochester Medway Kent, with a personal touch.</asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server">My handmade products range from newborn to toddlers and all are traditionally hand knitted.</asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server">I have a varied selection of items available to buy now which have been lovingly hand knitted by myself.</asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server">Any item can be made in a different colour or size.</asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server">If there is something you are looking for that is not in my product range then please</asp:Label>
        <a href="Contact.aspx">
            <asp:Label ID="Label6" runat="server" CssClass="aboutlink"> please contact me on 07972063629</asp:Label>
        </a>
        <br />
    </div>
    <br />
    <br />
       <div>
       <center>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/bearset.jpg" AlternateText="Bear jumper" Width="350px" />
        </center>
    </div>
</asp:Content>
