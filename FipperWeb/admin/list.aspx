<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="FipperWeb.list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
    View list of Products
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="SqlDataSource1" Width="825px">
        <Columns>
            <asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" SortExpression="ProductId" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="ProductType" HeaderText="ProductType" SortExpression="ProductType" />
            <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
            <asp:BoundField DataField="ProductQty" HeaderText="ProductQty" SortExpression="ProductQty" />
            <asp:ImageField DataImageUrlField="ProductImage" HeaderText="Product Image">
            </asp:ImageField>
            <asp:HyperLinkField DataNavigateUrlFields="ProductId" DataNavigateUrlFormatString="edit.aspx?Id={0}" Text="Edit" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1626475_co5027_asgConnectionString %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [ProductId] = @original_ProductId AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductType] = @original_ProductType) OR ([ProductType] IS NULL AND @original_ProductType IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductQty] = @original_ProductQty) OR ([ProductQty] IS NULL AND @original_ProductQty IS NULL)) AND (([ProductImage] = @original_ProductImage) OR ([ProductImage] IS NULL AND @original_ProductImage IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([ProductId], [ProductName], [ProductType], [ProductPrice], [ProductQty], [ProductImage]) VALUES (@ProductId, @ProductName, @ProductType, @ProductPrice, @ProductQty, @ProductImage)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct]" UpdateCommand="UPDATE [tblProduct] SET [ProductName] = @ProductName, [ProductType] = @ProductType, [ProductPrice] = @ProductPrice, [ProductQty] = @ProductQty, [ProductImage] = @ProductImage WHERE [ProductId] = @original_ProductId AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductType] = @original_ProductType) OR ([ProductType] IS NULL AND @original_ProductType IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductQty] = @original_ProductQty) OR ([ProductQty] IS NULL AND @original_ProductQty IS NULL)) AND (([ProductImage] = @original_ProductImage) OR ([ProductImage] IS NULL AND @original_ProductImage IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductId" Type="Int32" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_ProductType" Type="String" />
            <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
            <asp:Parameter Name="original_ProductQty" Type="Int32" />
            <asp:Parameter Name="original_ProductImage" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductId" Type="Int32" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductType" Type="String" />
            <asp:Parameter Name="ProductPrice" Type="Decimal" />
            <asp:Parameter Name="ProductQty" Type="Int32" />
            <asp:Parameter Name="ProductImage" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductType" Type="String" />
            <asp:Parameter Name="ProductPrice" Type="Decimal" />
            <asp:Parameter Name="ProductQty" Type="Int32" />
            <asp:Parameter Name="ProductImage" Type="String" />
            <asp:Parameter Name="original_ProductId" Type="Int32" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_ProductType" Type="String" />
            <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
            <asp:Parameter Name="original_ProductQty" Type="Int32" />
            <asp:Parameter Name="original_ProductImage" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Return to Admin Panel" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
