<%@ Page Title="Bubba Knits" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <script src="http://thecodeplayer.com/uploads/js/prefixfree.js" type="text/javascript">
    </script>
    <script type="text/javascript">

        function imagechange() {
            if (document.getElementById("id1").checked == true) {
                document.getElementById("id2").checked = true;
            }
            else if (document.getElementById("id2").checked == true) {
                document.getElementById("id3").checked = true;
            }
            else if (document.getElementById("id3").checked == true) {
                document.getElementById("id4").checked = true;
            }
            else if (document.getElementById("id4").checked == true) {
                document.getElementById("id5").checked = true;
            }
            else if (document.getElementById("id5").checked == true) {
                document.getElementById("id1").checked = true;
            }
        }

        setInterval("imagechange()", 5000);

    </script>
    <div class="slider">
        <input type="radio" name="slide_switch" id="id1" checked="checked" />
        <label for="id1">
            <img src="Images/Slider/boys-stripey-jumper.jpg" width="100" />
        </label>
        <img src="Images/Slider/boys-stripey-jumper.jpg" />
        <input type="radio" name="slide_switch" id="id2" />
        <label for="id2">
            <img src="Images/Slider/accessories-bag.jpg" width="100" />
        </label>
        <img src="Images/Slider/accessories-bag.jpg" />
        <input type="radio" name="slide_switch" id="id3" />
        <label for="id3">
            <img src="Images/Slider/girls-lime-green.jpg" width="100" />
        </label>
        <img src="Images/Slider/girls-lime-green.jpg" />
        <input type="radio" name="slide_switch" id="id4" />
        <label for="id4">
            <img src="Images/Slider/home1.jpg" width="100" />
        </label>
        <img src="Images/Slider/home1.jpg" />
        <input type="radio" name="slide_switch" id="id5" />
        <label for="id5">
            <img src="Images/Slider/aran3-(4).jpg" width="100" />
        </label>
        <img src="Images/Slider/aran3-(4).jpg" />
    </div>
    <div id="textdiv" class="hometext">
        <asp:Label ID="Label1" runat="server">Welcome to Bubba Knits</asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server">Beautifully hand knitted traditional and modern cardigans, jumpers, shawls, blankets and accessories</asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server">Personally made for babies and toddlers with love</asp:Label>
    </div>
</asp:Content>
