<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="FipperWeb.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Home: FipperWeb
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
    Welcome to the Homepage!
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate><div></HeaderTemplate>
            <ItemTemplate>
                <div>
                    <a href="<%#Eval("ProductId","products.aspx?Id={0}")%>">
                    <p><asp:Image ID="dspImg" Height="100" Width="100" runat="server" ImageUrl='<%# Eval ("ProductImage") %>' /></p>
                    </a>
                        <p>Product Name: <%#Eval("ProductName")%></p>
                        <p>Product Price: <%#Convert.ToDecimal(Eval("ProductPrice")).ToString("c") %></p>
                </div>
            </ItemTemplate>
            <FooterTemplate></div></FooterTemplate>   
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626475_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [tblProduct]">
    </asp:SqlDataSource>
    
</asp:Content>
