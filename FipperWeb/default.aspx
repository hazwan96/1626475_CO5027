<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="FipperWeb.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Home: FipperWeb
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
    Welcome to the Homepage
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    &nbsp
    <p>Live, work and play with your toes exposed and the freedom of slippers on your feet.
    Fipper is an explosion of colours and creativity. Born in 2008, Fipper is cool, premium and embodies the passion of tropics. 
    As of to date, we have expanded our market reach to overseas countries, such as Brunei, Indonesia, Singapore, Cambodia and Vietnam.</p>
    <p>&nbsp</p>
    <img src="Images/sme-award-2013.png" /><img src="Images/sme-award-2014.png" /><img src="Images/asean-outstanding-business-award.png" />
    <p>&nbsp</p>
    <p>Now who says being new is a disadvantage? To validate that, our brand also won The World's SMEs Best Brands Award (Non PLC) for 2013 & 2014
    by The Brand Laureate and Most Recognized Brand in Casual Footwear Excellence in ASEAN Outstanding Business Award 2016.
    Therefore, at Fipper we believe that our 'newness' at shoemaking gives us the freedom to dream. To see footwear with fresh eyes - and deliver
    equal parts fun, fearlessness and functionality.</p>
    
        <h2>Product Lists:
            
    </h2>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate><ul></HeaderTemplate>
            <ItemTemplate>
                <li>
                    <a href="<%#Eval("ProductId","product.aspx?Id={0}")%>">
                        <%#Eval("ProductName")%>
                    </a>
                </li>
            </ItemTemplate> 
            <FooterTemplate></ul></FooterTemplate>   
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626475_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>
    
</asp:Content>
