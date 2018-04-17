<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="FipperWeb.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Contact: FipperWeb
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
    Welcome to the Contact page
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    &nbsp
    <p>Reach to us through the below details!</p>
    &nbsp
    <p>Instagram: Fipper.bn</p>
    <p>Facebook: Fipper.bn</p>
    <p>Email: FipperWeb@mail.com</p>
    <p>Phone: 123-4567</p>
    <p>&nbsp;</p>
    <p></p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
<p>
    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="regEmailField" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email!" Display="None" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="reqEmailField" runat="server" ControlToValidate="txtEmail" Display="None" ErrorMessage="Email Required!"></asp:RequiredFieldValidator>
</p>
    <p>&nbsp;<asp:Label ID="lblSubject" runat="server" Text="Subject"></asp:Label>
        <asp:TextBox ID="txtSubject" runat="server" placeholder="Subject"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqSubjectField" runat="server" ControlToValidate="txtSubject" ErrorMessage="Subject Required!" Display="None"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="lblBody" runat="server" Text="Body"></asp:Label>
        <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" placeholder="Body"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqBodyField" runat="server" ControlToValidate="txtBody" ErrorMessage="Body Required!" Display="None"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="btnSendEmail" runat="server" OnClick="btnSendEmail_Click" Text="Send email" />
    </p>
    <p>
        <asp:Literal ID="litResult" runat="server"></asp:Literal>
    </p>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
    <div id="map"></div>
    <script>
        var map;
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: 4.885731, lng: 114.931669 },
                zoom: 20
            });
            var marker = new google.maps.Marker({
                position: { lat: 4.885731, lng: 114.931669 },
                map: map
            });
        }
    </script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD-jdsIvmLFyG9l5YKFdAbWzh9O02m42GQ&callback=initMap"
        type="text/javascript"></script>
</asp:Content>
