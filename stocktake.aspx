<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stocktake.aspx.cs" Inherits="A3GoodGums.stocktrade" %>

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
        .textBox{
            text-align: center;
        }
        .box{
            width: 60px;
            background-color:aquamarine
        }
        .marginLeft{
            margin-left: 612px;
        }
        
        .marginTop{
            margin-top: 15px;
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
        <form id="stockTakeForm" runat="server">
                    <div class="marginTop">
                        <asp:Label ID="lblReorder" runat="server" Text="Reorder level: "></asp:Label>
                        <asp:Button ID="btnIncrease" runat="server" Text="+" OnClick="btnIncrease_Click" />
                        <asp:Label ID="Count" runat="server" Text="10"></asp:Label>
                        <asp:Button ID="btnDecrease" runat="server" Text="-" OnClick="btnDecrease_Click" />
                        <div>
                            <asp:Label ID="lblItemName" runat="server" Text="Item name:" Width="400px" CssClass="textBox"></asp:Label>
                            <asp:Label ID="lblUnitPrice" runat="server" Text="Unit price: " Width="155px" CssClass="textBox"></asp:Label>
                            <asp:Label ID="lblStockQty" runat="server" Text="Stock quantity: " Width="152px" CssClass="textBox"></asp:Label>
                            <asp:Label ID="lblReorderQty" runat="server" Text="Reorder quantity: " Width="152px" CssClass="textBox"></asp:Label>
                            <asp:Label ID="lblSubtotal" runat="server" Text="Subtotal:" Width="170px" CssClass="textBox"></asp:Label>
                        </div>
                        <div class="marginTop" >
                            <asp:TextBox ID="txtItem1" runat="server" MaxLength="100" Width="390px">Silver Princess Gum</asp:TextBox>
                            <asp:TextBox ID="txtPrice1" runat="server" Width="145px" CssClass="textBox">20.00</asp:TextBox>
                            <asp:TextBox ID="txtStockQty1" runat="server" Width="145px" CssClass="textBox">3</asp:TextBox>
                            <asp:TextBox ID="txtReorder1" runat="server" Width="145px" Enabled="False" CssClass="textBox"></asp:TextBox>
                            <asp:TextBox ID="txtSubtotal1" runat="server" Width="145px" Enabled="False" CssClass="textBox"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfItem1" runat="server" ErrorMessage="Please enter the first Item Name." ControlToValidate="txtItem1" Text="*"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="rfPrice1" runat="server" ErrorMessage="Please enter the first Unit Price." ControlToValidate="txtPrice1" Text="*"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rvPrice1" runat="server" ErrorMessage="First Unit price must be between 0.00 - 1000.00!" ControlToValidate="txtPrice1" MinimumValue="0.00" MaximumValue="1000.00"  Type="Double" Text="*"></asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="rfStockQty1" runat="server" ErrorMessage="Please enter the first Quantity." ControlToValidate="txtStockQty1" Text="*"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rvStockQty1" runat="server" ErrorMessage="Please enter the first Quantity between 1 - 100!" ControlToValidate="txtStockQty1" MinimumValue="0" MaximumValue="100" Type="Integer" Text="*"></asp:RangeValidator>
                        </div>
                        <div class="marginTop">
                            <asp:TextBox ID="txtItem2" runat="server" MaxLength="100" Width="390px">Snow Gum</asp:TextBox>
                            <asp:TextBox ID="txtPrice2" runat="server" Width="145px" CssClass="textBox">25.00</asp:TextBox>
                            <asp:TextBox ID="txtStockQty2" runat="server" Width="145px" CssClass="textBox">5</asp:TextBox>
                            <asp:TextBox ID="txtReorder2" runat="server" Width="145px" Enabled="False" CssClass="textBox"></asp:TextBox>
                            <asp:TextBox ID="txtSubtotal2" runat="server" Width="145px" Enabled="False" CssClass="textBox"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfItem2" runat="server" ErrorMessage="Please enter the second Item Name." ControlToValidate="txtItem2" Text="*"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="rfPrice2" runat="server" ErrorMessage="Please enter the second Unit Price." ControlToValidate="txtPrice2" Text="*"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rvPrice2" runat="server" ErrorMessage="Second Unit price must be between 0.00 - 1000.00!" ControlToValidate="txtPrice2" MinimumValue="0.00" MaximumValue="1000.00"  Type="Double" Text="*"></asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="rfStockQty2" runat="server" ErrorMessage="Please enter the second Quantity." ControlToValidate="txtStockQty2" Text="*"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rvStockQty2" runat="server" ErrorMessage="Please enter second Quantity between 1 - 100!" ControlToValidate="txtStockQty2" MinimumValue="0" MaximumValue="100" Type="Integer" Text="*"></asp:RangeValidator>
                        </div>
                        <div class="marginTop">
                            <asp:TextBox ID="txtItem3" runat="server" MaxLength="100" Width="390px">Red Flowering Gum</asp:TextBox>
                            <asp:TextBox ID="txtPrice3" runat="server" Width="145px" CssClass="textBox">30.00</asp:TextBox>
                            <asp:TextBox ID="txtStockQty3" runat="server" Width="145px" CssClass="textBox">7</asp:TextBox>
                            <asp:TextBox ID="txtReorder3" runat="server" Width="145px" Enabled="False" CssClass="textBox"></asp:TextBox>
                            <asp:TextBox ID="txtSubtotal3" runat="server" Width="145px" Enabled="False" CssClass="textBox"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfItem3" runat="server" ErrorMessage="Please enter the third Item Name." ControlToValidate="txtItem2" Text="*"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="rfPrice3" runat="server" ErrorMessage="Please enter the third Unit Price." ControlToValidate="txtPrice3" Text="*"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rvPrice3" runat="server" ErrorMessage="Third Unit price must be between 0.00 - 1000.00!" ControlToValidate="txtPrice3" MinimumValue="0.00" MaximumValue="1000.00"  Type="Double" Text="*"></asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="rfStockQty3" runat="server" ErrorMessage="Please enter the third Quantity." ControlToValidate="txtStockQty3" Text="*"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rvStockQty3" runat="server" ErrorMessage="Please enter third Quantity between 1 - 100!" ControlToValidate="txtStockQty3" MinimumValue="0" MaximumValue="100" Type="Integer" Text="*"></asp:RangeValidator>
                        </div>
                        <div class="marginTop">
                            <asp:Button ID="btnCalculate" runat="server" Text="Calculate" Width="100px" CssClass="btn" OnClick="btnCalculate_Click" />
                            <asp:TextBox ID="txtTotal" runat="server" Text="Total:" Width="145px" Enabled="False" CssClass="marginLeft textBox"></asp:TextBox>
                            <asp:TextBox ID="txtTotalAmount" runat="server" Width="145px" Enabled="False" CssClass="textBox"></asp:TextBox>
                        </div>
                        <div>
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please fill in the required fields:" />
                    <asp:Label ID="lblStocktakeError" runat="server" Width="300"></asp:Label>
                        </div>
                    </div>
                </form>

    <footer>
            <p>    
                
            </p>
    </footer>
</body>
</html>
