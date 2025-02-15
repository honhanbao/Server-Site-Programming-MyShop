<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="invoiceTest.aspx.cs" Inherits="A3GoodGums.invoiceTest" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <!--Page Title-->
    <title>Invoice Page</title>
     <!-- CCS Style Sheets applied -->
    <link href="styles.css" rel="stylesheet" />
    <style>
        div {
            box-sizing: border-box;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            border: black solid 1px;
            margin-bottom: 1px;
            padding-left: 5px;
        }
        .auto-style1 {
            right: 90px;
            top: 162px;
        }
    </style>
</head>
<body>
    <!--Site name and branding-->
    <header>
        <img src="images/GoodGums-logo.png" alt="Logo" class="logo" />
    </header>
        <!--Main holds the content of the page-->
        <main>


            <!--Page menu buttons to 5 main pages and logout button-->
            <nav>
                <ul class="nav">
                    <li><a href="index.aspx">Home</a></li>
                    <li><a href="add.aspx">Add Record</a></li>
                    <li><a href="invoice.aspx" class="disabled">Invoice</a></li>
                    <li><a href="stocktake.aspx">Stocktake</a></li>
                    <li><a href="chart.aspx">Chart</a></li>
                    <li><a href="login.aspx?logout=1">Logout</a></li>
                </ul>
            </nav><!--Invoice form, to create customer invoice and send to print page-->

                <form id="invoiceFormTest" runat="server" method="post" action="printTest">
                    <div>
                        <asp:Label ID="lblFullName" runat="server" Text="Label">Full name of customer:<br /></asp:Label>
                        <asp:TextBox ID="txtFullName" runat="server" Width="300px" MaxLength="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="valFullName" runat="server" ErrorMessage="Please Enter Full Name." Text="*" ControlToValidate="txtFullName"></asp:RequiredFieldValidator>
                    </div>
                    <asp:Button ID="btnSubmitInvoice" runat="server" Text="Submit" UseSubmitBehavior="true" Width="100px" CssClass="btn"/>
                </form>
        </main>
</body>
</html>
