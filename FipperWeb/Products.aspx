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
        <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Bind("ProductPrice") %>' />
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
<br />
&nbsp
  <table id="homeTable">
        <tr>
            <td>
                <p>
                    Fipper Urbanite
                </p>
                <img src="Images/men's flip flop/fipper  urbanite turqoise SLASH grey (dark) 77.90.jpg" alt="#">
                <p>
                    Color: Turqoise / Grey</p>
                <p>
                    Price:
                </p>
                &nbsp
            </td>
            <td>
                <p>
                    Fipper Black Series
                </p>
                <img src="Images/men's flip flop/fipper black series black SLASH brown (glow in the dark) 31.90.jpg" alt="#">
                <p>
                    Color: Black / Brown (Glow in the dark)</p>
                <p>
                    Price:
                </p>
                &nbsp
            </td>
            <td>
                <p>
                    Fipper Black Series
                </p>
                <img src="Images/men's flip flop/fipper black series black SLASH green 31.90.jpg" alt="#">
                <p>
                    Color: Black / Green (glow in the dark)</p>
                <p>
                    Price:
                </p>
                &nbsp
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    Fipper Black Series
                </p>
                <img src="Images/men's flip flop/fipper black series black SLASH grey (glow in the dark) 31.90.jpg" alt="#" />
                <p>
                    Color: Black / Grey (Glow in the dark)</p>
                <p>
                    Price:
                </p>
                &nbsp
            </td>
            <td>
                <p>
                    Fipper Black Series
                </p>
                <img src="Images/men's flip flop/fipper black series black SLASH red (glow in the dark) 31.90.jpg" alt="#" />
                <p>
                    Color: Black / Red</p>
                <p>
                    Price:
                </p>
                &nbsp
            </td>
            <td>
                <p>
                    Fipper Fitt
                </p>
                <img src="Images/men's flip flop/fipper fitt black SLASH red 42.90.jpg" alt="#" />
                <p>
                    Color: Black / Red</p>
                <p>
                    Price:
                </p>
                &nbsp
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    Fipper Fitt
                </p>
                <img src="Images/men's flip flop/fipper fitt blue (royal) SLASH red 42.90.jpg" alt="#" />
                <p>
                    Color: Blue (Royal) / Red</p>
                <p>
                    Price:
                </p>
                &nbsp
            </td>
            <td>
                <p>
                    Fipper Fitt
                </p>
                <img src="Images/men's flip flop/fipper fitt blue (snorkel) SLASH grey 41.90.jpg" alt="#" />
                <p>
                    Color: Blue (Snorkel) /  Grey</p>
                <p>
                    Price:
                </p>
                &nbsp
            </td>
            <td>
                <p>
                    Fipper Fitt
                </p>
                <img src="Images/men's flip flop/fipper fitt green (emerald) SLASH grey 42.90.jpg" alt="#" />
                <p>
                    Color: Green (Emerald) / Grey</p>
                <p>
                    Price:
                </p>
                &nbsp
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    Fipper Fitt
                </p>
                <img src="Images/men's flip flop/fipper fitt grey (dark) SLASH turqoise 42.90.jpg" alt="#" />
                <p>
                    Color: Grey (Dark) / Turqoise</p>
                <p>
                    Price:
                </p>
                &nbsp
            </td>
            <td>
                <p>
                    Fipper Fitt
                </p>
                <img src="Images/men's flip flop/fipper fitt maroon SLASH blue (42.90).jpg" alt="#" />
                <p>
                    Color: Maroon / Blue</p>
                <p>
                    Price:
                </p>
                &nbsp
            </td>
            <td>
                <p>
                    Fipper Fitt
                </p>
                <img src="Images/men's flip flop/fipper fitt turqoise SLASH black 42.90.jpg" alt="#" />
                <p>
                    Color: Turqoise / Black</p>
                <p>
                    Price:
                </p>
                &nbsp
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    Fipper Urbanite
                </p>
                <img src="Images/men's flip flop/fipper urbanite black SLASH red 77.90.jpg" alt="#" />
                <p>
                    Color: Black / Red</p>
                <p>
                    Price:
                </p>
                &nbsp
            </td>
            <td>
               <p>
                   Fipper Urbanite
                </p>
                <img src="Images/men's flip flop/fipper urbanite blue (snorkel) SLASH turqoise 77.90.jpg" alt="#" />
                <p>
                    Color: Blue (Snorkel) / Turqoise</p>
                <p>
                    Price:
                </p>
                &nbsp
            </td>
            <td>
                <p>
                    Fipper Urbanite
                </p>
                <img src="Images/men's flip flop/fipper urbanite blue SLASH red 77.90.jpg" alt="#" />
                <p>
                    Color: Blue / Red</p>
                <p>
                    Price:
                </p>
                &nbsp
            </td>
        </tr>

    </table>
</asp:Content>
