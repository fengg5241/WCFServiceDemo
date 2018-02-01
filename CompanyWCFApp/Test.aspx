<%@ Page Title="Test" Language="C#" MasterPageFile="~/nosidebar.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="ChapterB2B.Test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    HELLO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="categrorySqlDataSource" DataTextField="categoryName" DataValueField="categoryID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="categrorySqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT ProductCategory.* FROM ProductCategory"></asp:SqlDataSource>
    <br />
    <br />
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="productID" DataSourceID="stockSqlDataSource" GroupItemCount="3" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
        <EmptyDataTemplate>
                        <table style="font-size: large; border-style:solid; border-color:black;border-width:thin" width="100%">
                            <tr>
                                <td>No Service</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <LayoutTemplate>
                        <table runat="server" id="tbService" cellspacing="10">
                            <tr runat="server" id="groupPlaceholder">
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <GroupTemplate>
                        <tr runat="server" id="trServiceGroup">
                            <td runat="server" id="itemPlaceholder" />
                        </tr>
                    </GroupTemplate>
                    <ItemTemplate>
                        <td runat="server" id="tdService" style="background-color: antiquewhite">
                            <%-- Data-bound content. --%>
                            <div align="center">
                                <a runat="server" href='<%# "~/testDetail.aspx?Id=" + Eval("productID") %>'>
                                    <asp:Image ID="imgPhoto" runat="server" Width="200px" Height="200px" ImageUrl="~/Images/DefaultPhoto.png" />
                                </a>
                                <br />
                                <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("productName") %>' />
                                
                                $<asp:Label ID="lblPrice" runat="server" Text='<%# Eval("unitPrice", "{0:N2}") %>' />
                                
                            </div>
                            <br />
                            <div>
                                
                                <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("description") %>' />
                            </div>
                            
                        </td>
                    </ItemTemplate>
       
    </asp:ListView>
    <asp:SqlDataSource ID="stockSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Product.productID, Product.productName, Product.description, Product.unitPrice, Product.stockLevel, Product.photo, Product.categoryID, ProductCategory.categoryName FROM Product LEFT OUTER JOIN ProductCategory ON Product.categoryID = ProductCategory.categoryID"></asp:SqlDataSource>
&nbsp;
</asp:Content>
