<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="A3GoodGums.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <title>Login page</title>
    <link href="style.css" rel="stylesheet" />
    <style>
        .margin {
            margin: 3px;
        }
        .labelWidth {
            display: inline-block;
            width: 90px;
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
        <div>
            <h1>Customer Purchases</h1>
            <asp:GridView ID="gvPurchase" runat="server"></asp:GridView>
        </div>
        <div>
            <asp:Label ID="lblLargeOrders" runat="server" Text="Number of Large Orders"></asp:Label>
            <asp:TextBox ID="txtLargeOrder" runat="server" Enabled="True"></asp:TextBox>
        </div>
    </form>
       
       
    
</body>
</html>
