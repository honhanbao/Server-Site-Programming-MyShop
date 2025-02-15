<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add1.aspx.cs" Inherits="A3GoodGums.add1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add record</title>
    <link href="style.css" rel="stylesheet" />
    <style>
        .margin {
            margin: 3px;
        }
        .labelWidth {
            display: inline-block;
            width: 120px;
        }
        .textBox{
            text-align: center;
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
                <li><a href="add1.aspx">Add Record</a></li>
                <li><a href="invoice.aspx">Invoice</a></li>
                <li><a href="stocktake.aspx">Stocktake</a></li>
                <li><a href="chart.aspx">Chart</a></li>
                <li><a href="login.aspx?logout=1">Logout</a></li>
            </ul>
        </nav>
    <!--Home contents-->
    <form id="addForm" runat="server">
        <!-- Form title -->
        <h1>Add customer form</h1>
        <!-- Fieldset -->
        <fieldset>

            <!-- Id -->
            <div>
                <asp:Label ID="lblId" runat="server" Text="ID: " CssClass="margin labelWidth"></asp:Label>
                <asp:TextBox ID="txtId" runat="server" placeholder="Customer's id" CssClass="textBox"></asp:TextBox>
            </div>

            <!-- Full Name -->
            <div>
                <asp:Label ID="lblFullName" runat="server" Text="Full Name: " CssClass="margin labelWidth"></asp:Label>
                <asp:TextBox ID="txtFullName" runat="server" placeholder="Customer's full name" CssClass="textBox"></asp:TextBox>
            </div>

            <!-- Email Address -->
            <div>
                <asp:Label ID="lblEmailAddress" runat="server" Text="Email Address: " CssClass="margin labelWidth"></asp:Label>
                <asp:TextBox ID="txtEmailAddress" runat="server" placeholder="Customer's email address" CssClass="textBox"></asp:TextBox>
            </div>

            <!--Product Name -->
            <div>
                <asp:Label ID="lblProductName" runat="server" Text="Product Name: " CssClass="margin labelWidth"></asp:Label>
                <asp:TextBox ID="txtProductName" runat="server" placeholder="Product name" CssClass="textBox"></asp:TextBox>
            </div>

            <!-- Unit Price -->
            <div>
                <asp:Label ID="lblUnitPrice" runat="server" Text="Unit Price: " CssClass="margin labelWidth"></asp:Label>
                <asp:TextBox ID="txtUnitPrice" runat="server" placeholder="Unit Price" CssClass="textBox"></asp:TextBox>
            </div>

            <!-- Quantity -->
            <div>
                <asp:Label ID="lblQuantity" runat="server" Text="Quantity: " CssClass="margin labelWidth"></asp:Label>
                <asp:TextBox ID="txtQuantity" runat="server" placeholder="Quantity" CssClass="textBox"></asp:TextBox>
            </div>

            <!-- Submit Button -->
            <div style="text-align: center; margin-top: 30px;">
                <asp:Button ID="btnAddCustomer" runat="server" Text="Add Customer" CssClass="btn" OnClick="btnAddCustomer_Click"/>
            </div>

            <div>
                <asp:Label ID="lblAddMessage" runat="server" ForeColor="Red" Visible="false"></asp:Label>
            </div>
            
        </fieldset>
    </form>
    <!--Footer-->
    <footer>
            <p>    
                @GoodGums
            </p>
    </footer>
</body>
</html>
