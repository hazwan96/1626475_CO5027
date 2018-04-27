<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="FipperWeb.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
    Edit Products
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductId" DataSourceID="SqlDataSource1" Width="791px">
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
                ProductImage:
                <asp:TextBox ID="ProductImageTextBox" runat="server" Text='<%# Bind("ProductImage") %>' />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LinkButton</asp:LinkButton>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProductImage") %>'></asp:Label>
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
                ProductImage:
                <asp:TextBox ID="ProductImageTextBox" runat="server" Text='<%# Bind("ProductImage") %>' />
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
                <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Bind("ProductPrice") %>' />
                <br />
                ProductQty:
                <asp:Label ID="ProductQtyLabel" runat="server" Text='<%# Bind("ProductQty") %>' />
                <br />
                ProductImage:
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProductImage") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1626475_co5027_asgConnectionString %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [ProductId] = @original_ProductId AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductType] = @original_ProductType) OR ([ProductType] IS NULL AND @original_ProductType IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductQty] = @original_ProductQty) OR ([ProductQty] IS NULL AND @original_ProductQty IS NULL)) AND (([ProductImage] = @original_ProductImage) OR ([ProductImage] IS NULL AND @original_ProductImage IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([ProductId], [ProductName], [ProductType], [ProductPrice], [ProductQty], [ProductImage]) VALUES (@ProductId, @ProductName, @ProductType, @ProductPrice, @ProductQty, @ProductImage)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct] WHERE ([ProductId] = @ProductId)" UpdateCommand="UPDATE [tblProduct] SET [ProductName] = @ProductName, [ProductType] = @ProductType, [ProductPrice] = @ProductPrice, [ProductQty] = @ProductQty, [ProductImage] = @ProductImage WHERE [ProductId] = @original_ProductId AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductType] = @original_ProductType) OR ([ProductType] IS NULL AND @original_ProductType IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductQty] = @original_ProductQty) OR ([ProductQty] IS NULL AND @original_ProductQty IS NULL)) AND (([ProductImage] = @original_ProductImage) OR ([ProductImage] IS NULL AND @original_ProductImage IS NULL))">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductId" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
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
        &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Return to List" />
        <br />
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
