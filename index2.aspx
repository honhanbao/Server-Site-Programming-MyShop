<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index2.aspx.cs" Inherits="A3GoodGums.indexTest2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <title>Home page</title>
    <link href="style.css" rel="stylesheet" />
    <style>
        .margin {
            margin: 3px;
        }

        .labelWidth {
            display: inline-block;
            width: 90px;
        }

        .textBox {
            text-align: center;
        }

        .box {
            width: 60px;
            background-color: aquamarine
        }

        .gridview {
            width: 600px;
        }
    </style>
</head>
<body>
    <!--Site logo-->
    <header>
        <img src="images/GoodGums-logo.png" alt="Logo" class="logo" />   
    </header>

    <!-- Nav bar -->
        <nav>
            <ul class="nav">
                <li><a href="index.aspx" class="disabled">Home</a></li>
                <li><a href="add.aspx">Add Record</a></li>
                <li><a href="invoice.aspx">Invoice</a></li>
                <li><a href="stocktake.aspx">Stocktake</a></li>
                <li><a href="chart.aspx">Chart</a></li>
                <li><a href="login.aspx?logout=1">Logout</a></li>
            </ul>
        </nav>
    <!--Home contents-->
    <form id="indexForm" runat="server">
        <div style="margin-bottom: 20px; width: 789px;">
            <h1>Customer Purchases</h1>
            
            <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource">
                <Columns>
                    <asp:BoundField DataField="id"              HeaderText="ID" SortExpression="id" />
                    <asp:BoundField DataField="fullName"        HeaderText="Full Name" SortExpression="fullName" />
                    <asp:BoundField DataField="emailAddress"    HeaderText="Email Address" SortExpression="emailAddress" />
                    <asp:BoundField DataField="productName"     HeaderText="Product Name" SortExpression="productName" />
                    <asp:BoundField DataField="unitPrice"       HeaderText="UnitPrice" SortExpression="unitPrice" />
                    <asp:BoundField DataField="quantity"        HeaderText="Quantity" SortExpression="quantity" />
                </Columns>
            </asp:GridView>

            <asp:XmlDataSource ID="XmlDataSource" runat="server" DataFile="~/App_Data/purchases.xml"></asp:XmlDataSource>
        </div>


        <div>
            <asp:Label ID="lblLargeOrders" runat="server" Text="Number of Large Orders" CssClass="margin"></asp:Label>
            <asp:TextBox ID="txtLargeOrder" runat="server" Text="" Enabled="True"  CssClass="textBox box"></asp:TextBox>
        </div>

    </form>
       
    <!--Footer-->
    <footer>
            <p>    
                @GoodGums
            </p>
    </footer>
</body>
</html>
</body>
</html>
