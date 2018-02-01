<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testDetail.aspx.cs" Inherits="ChapterB2B.testDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="productID" DataSourceID="productDetailSqlDataSource" Height="163px" Width="269px">
                <Fields>
                    <asp:BoundField DataField="productID" HeaderText="productID" InsertVisible="False" ReadOnly="True" SortExpression="productID" />
                    <asp:BoundField DataField="productName" HeaderText="productName" SortExpression="productName" />
                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                    <asp:BoundField DataField="unitPrice" HeaderText="unitPrice" SortExpression="unitPrice" />
                    <asp:BoundField DataField="stockLevel" HeaderText="stockLevel" SortExpression="stockLevel" />
                    <asp:BoundField DataField="categoryID" HeaderText="categoryID" SortExpression="categoryID" />
                    <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                    <asp:BoundField DataField="categoryName" HeaderText="categoryName" SortExpression="categoryName" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="productDetailSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Product.*, ProductCategory.categoryName FROM Product Left JOIN ProductCategory ON Product.categoryID = ProductCategory.categoryID where ([productID] = @Id)">
                <SelectParameters>
                        <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
                </SelectParameters>

            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
