<%@ Page Title="Contact Us | Bubba Knits" Language="VB" MasterPageFile="~/Site.master"
    AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <script type="text/javascript">

        function sendcheck() {
            var valid = 1;
            if (document.getElementById("<%= nameTextBox.ClientID %>").value == "") {
                document.getElementById("<%= nameTextBox.ClientID %>").style.border = "solid 2px red";
                document.getElementById("<%= nameTextBox.ClientID %>").value = "Please enter your name";
                valid = 0;
            }

            if (document.getElementById("<%= emailTextBox.ClientID %>").value == "") {
                document.getElementById("<%= emailTextBox.ClientID %>").style.border = "solid 2px red";
                document.getElementById("<%= emailTextBox.ClientID %>").value = "Please enter your email address";
                valid = 0;
            }

            if (document.getElementById("<%= enqTextBox.ClientID %>").value == "") {
                document.getElementById("<%= enqTextBox.ClientID %>").style.border = "solid 2px red";
                document.getElementById("<%= enqTextBox.ClientID %>").value = "Please enter a message";
                valid = 0;
            }

            if (valid == 0) {
                return false;
            }
            else {
                return true;
            }

        }

    </script>
    <span class="contactext">
    I always want to hear from our customers. So, whether you have a general question, would like to contact us about an order or can’t see the item of clothing you want, I really want to hear from you.
    </span>
    
    <br />
    <br />
    <asp:Label ID="label6" runat="server">I aim to answer any query within 24 hours</asp:Label>
    <br />
    <br />
    <table width="600px">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server">Name</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="nameTextBox" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server">Email Address</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="emailTextBox" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server">Enquiry Type</asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="typeDropDown" runat="server" Width="305px">
                    <asp:ListItem Value="1" Text="General"></asp:ListItem>
                    <asp:ListItem Value="2" Text="Order"></asp:ListItem>
                    <asp:ListItem Value="3" Text="Item Request"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server">Enquiry</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="enqTextBox" runat="server" Height="150px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
            &nbsp
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="return sendcheck()" CssClass="submitbutton">Submit</asp:LinkButton>
            </td>
        </tr>
    </table>
    
    <div class="contactimage">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/bear in chair.jpg" AlternateText="Girls Green Set" Width="250px" />
    </div>
</asp:Content>
