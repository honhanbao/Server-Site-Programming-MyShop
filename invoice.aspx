<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="invoice.aspx.cs" Inherits="A3GoodGums.invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add record page</title>
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
        .marginTop{
            margin-top: 10px;
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
    <form id="invoiceForm" method="post" action="print" runat="server"  defaultfocus="txtFullName">
        <!-- Form title -->
            
        <h1>Invoice form</h1>
        <!-- Fieldset -->
        <fieldset>
                    <div >
                        <asp:Label ID="lblFullName" runat="server" Text="Label">Full name of customer:<br /></asp:Label>
                        <asp:TextBox ID="txtFullName" runat="server" Width="300px" MaxLength="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="valFullName" runat="server" ErrorMessage="Please Enter Full Name." Text="*" ControlToValidate="txtFullName"></asp:RequiredFieldValidator>
                    </div>
            <!-- Title -->
                    <div class="marginTop">
                        <asp:Label ID="lblItemName" runat="server" Text="Label" Width="310px"  CssClass="textBox">Item name:</asp:Label>
                        <asp:Label ID="lblUnitPrice" runat="server" Text="Label" Width="150px" CssClass="textBox">Unit price:</asp:Label>
                        <asp:Label ID="lblQuantity" runat="server" Text="Label" Width="150px" CssClass="textBox">Quantity:</asp:Label>
                    </div>
                    <div class="marginTop">
                        <asp:TextBox ID="txtItemName1" runat="server" Width="300px" MaxLength="100"></asp:TextBox>
                        <asp:TextBox ID="txtUnitPrice1" runat="server" Width="150px" CssClass="textBox">0.00</asp:TextBox>
                        <asp:TextBox ID="txtQuantity1" runat="server" Width="150px" MaxLength="3" CssClass="textBox">0</asp:TextBox>
                        <!--First product must be not blank-->
                        <asp:RequiredFieldValidator ID="rfItemName1" runat="server" 
                            ErrorMessage="Please Enter the first Item Name." 
                            Text="*" 
                            ControlToValidate="txtItemName1">
                            </asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvUnitPrice1" runat="server" 
                            ErrorMessage="First Unit price must be between 1.00 - 1000.00!" 
                            Text="*" 
                            ControlToValidate="txtUnitPrice1" 
                            MinimumValue="1.00" 
                            MaximumValue="1000.00"  
                            Type="Double">
                            </asp:RangeValidator>  
                        <asp:RequiredFieldValidator ID="rfUnitPrice1" runat="server" ErrorMessage="Please Enter the first Unit Price between 1.00 - 1000.00." 
                            Text="*" ControlToValidate="txtUnitPrice1"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvQuantity1" runat="server" ErrorMessage="First Quantity must be between 1 - 100!" 
                            Text="*" ControlToValidate="txtQuantity1" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="rfQuantity1" runat="server" ErrorMessage="Please Enter the first Quantity between 1 - 100." 
                            Text="*" ControlToValidate="txtQuantity1"></asp:RequiredFieldValidator>
                    </div>
            <!--Second product -->
                    <div class="marginTop">
                        <asp:TextBox ID="txtItemName2" runat="server" Width="300px" MaxLength="100"></asp:TextBox>
                        <asp:TextBox ID="txtUnitPrice2" runat="server" Width="150px" CssClass="textBox">0.00</asp:TextBox>
                        <asp:TextBox ID="txtQuantity2" runat="server" Width="150px" Type="Integer" MaxLength="3" CssClass="textBox">0</asp:TextBox>
                        <asp:RangeValidator ID="rvUnitPrice2" runat="server" 
                            ErrorMessage="Second Unit price must be 0.00 if no item, or between 1.00 - 1000.00!" 
                            Text="*" 
                            ControlToValidate="txtUnitPrice2" 
                            MinimumValue="0.00" 
                            MaximumValue="1000.00"  
                            Type="Double">
                            </asp:RangeValidator>
                        <asp:RangeValidator ID="rvQuantity2" runat="server" ErrorMessage="Second Quantity must be 0 if no item, or between 1 - 100" 
                            Text="*" ControlToValidate="txtQuantity2" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </div>
            <!--Third product -->
                    <div class="marginTop">
                        <asp:TextBox ID="txtItemName3" runat="server" Width="300px" MaxLength="100"></asp:TextBox>
                        <asp:TextBox ID="txtUnitPrice3" runat="server" Width="150px" CssClass="textBox">0.00</asp:TextBox>
                        <asp:TextBox ID="txtQuantity3" runat="server" Width="150px" MaxLength="3" CssClass="textBox">0</asp:TextBox>
                        <asp:RangeValidator ID="rvUnitPrice3" runat="server" ErrorMessage="Third Unit price must be 0.00 if no item, or between 1.00 - 1000.00!" 
                            Text="*" ControlToValidate="txtUnitPrice3" MinimumValue="0.00" MaximumValue="1000.00"  Type="Double"></asp:RangeValidator>
                        <asp:RangeValidator ID="rvQuantity3" runat="server" ErrorMessage="Third Quantity must be 0 if no item, or between 1 - 100" 
                            Text="*" ControlToValidate="txtQuantity3" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </div>
            <!-- Button row -->
                    <div class="marginTop">
                        <asp:Button ID="btnSubmitInvoice" runat="server" Text="Submit" UseSubmitBehavior="true" Width="100px" CssClass="btn" OnClick="btnSubmitInvoice_Click"/>
                        <asp:Label ID="lblBlank1" runat="server" Text="" Width="310px"></asp:Label>
                        <asp:Label ID="lblBlank2" runat="server" Text="" Width="210px"></asp:Label>
                    </div>
            <!-- Validation message -->
                    <div>
                        <asp:ValidationSummary ID="ValidationSummary" runat="server" HeaderText="Please fill in the required fields:" />
                        <asp:Label ID="lblInvoiceError" runat="server" Width="300"></asp:Label>
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
