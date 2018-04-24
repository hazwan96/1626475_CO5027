<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="FipperWeb.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Products: FipperWeb
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
    Welcome to the Products page
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductId" DataSourceID="SqlDataSource1">
    <EditItemTemplate>
        ProductId:
        <asp:Label ID="ProductIdLabel1" runat="server" Text='<%# Eval("ProductId") %>' />
        <br />
        ProductName:
        <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
        <br />
        ProductType:
        <asp:TextBox ID="ProductTypeTextBox" runat="server" Text='<%# Bind("ProductType") %>' />
        <br />
        ProductPrice:
        <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
        <br />
        ProductQty:
        <asp:TextBox ID="ProductQtyTextBox" runat="server" Text='<%# Bind("ProductQty") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        ProductId:
        <asp:TextBox ID="ProductIdTextBox" runat="server" Text='<%# Bind("ProductId") %>' />
        <br />
        ProductName:
        <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
        <br />
        ProductType:
        <asp:TextBox ID="ProductTypeTextBox" runat="server" Text='<%# Bind("ProductType") %>' />
        <br />
        ProductPrice:
        <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
        <br />
        ProductQty:
        <asp:TextBox ID="ProductQtyTextBox" runat="server" Text='<%# Bind("ProductQty") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        ProductId:
        <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
        <br />
        ProductName:
        <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
        <br />
        ProductType:
        <asp:Label ID="ProductTypeLabel" runat="server" Text='<%# Bind("ProductType") %>' />
        <br />
        ProductPrice:
        <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Convert.ToDecimal(Eval("ProductPrice")).ToString("c") %>' />
        <br />
        ProductQty:
        <asp:Label ID="ProductQtyLabel" runat="server" Text='<%# Bind("ProductQty") %>' />
        <br />

    </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626475_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [tblProduct] WHERE ([ProductId] = @ProductId)">
    <SelectParameters>
        <asp:QueryStringParameter Name="ProductId" QueryStringField="Id" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
