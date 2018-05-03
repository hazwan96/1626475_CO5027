<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="uploadImage.aspx.cs" Inherits="FipperWeb.admin.uploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
    Upload Image
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FileUpload ID="ImageFileUploadControl" runat="server" />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
    <br />
    <asp:Image ID="CurrentImage" runat="server" />
    <br />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
