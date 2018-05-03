<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="FipperWeb.index1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
    Welcome to the Admin Panel! 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <asp:Button ID="btnProductList" runat="server" OnClick="Button2_Click" Text="View the Product List" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="btnProductAdd" runat="server" OnClick="Button3_Click" Text="Add a product" />
    </p>
    <p>
        <br />
        <asp:Button ID="btnLogout" runat="server" OnClick="Button1_Click" Text="Admin Log-out" />
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
