<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="print.aspx.cs" Inherits="A3GoodGums.print" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Print invoice page</title>
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
<main>
            <!--Print page receives Input from Invoice page.-->
            <form id="printForm" runat="server" >
                <div  style="text-align: center;">
                <section style="align-content: center;">
                    <br /><br />
                    <asp:Label ID="lblInvoice" runat="server" Text="Invoice for: " CssClass="textBox"></asp:Label>
                    <asp:Label ID="lblInvName" runat="server" Text=""></asp:Label>
                    <br /><br />
                </section>
                <!--Date issued, always displays todays date.-->
                <section class="auto-style2">
                    <asp:Label ID="lblDateIssued" runat="server" Text="Date Issued: "></asp:Label>
                    <asp:Label ID="lblDate" runat="server" Text="" ControlToValidate="lblDate"></asp:Label>
                    <br /><br />
                </section>
                <section>
                    <asp:TextBox ID="lblItem" runat="server" Text="Item:" Width="220px" Enabled="False" CssClass="textBox"></asp:TextBox>
                    <asp:TextBox ID="lblUnitPrice" runat="server" Text="Unit Price: " Width="135px" Enabled="False" CssClass="textBox"></asp:TextBox>
                    <asp:TextBox ID="lblQuantity" runat="server" Text="Quantity: " Width="115px" Enabled="False" CssClass="textBox"></asp:TextBox>
                    <asp:TextBox ID="lblSubtotal" runat="server" Text="Subtotal: " Width="115px" Enabled="False" CssClass="textBox"></asp:TextBox>
                </section>
                <section>
                    <asp:TextBox ID="lblItem1" runat="server" Width="220px" Enabled="False"></asp:TextBox>
                    <asp:TextBox ID="lblUnitPrice1" runat="server" Width="135px" Enabled="False" CssClass="textBox"></asp:TextBox>
                    <asp:TextBox ID="lblQuantity1" runat="server" Width="115px" Enabled="False" CssClass="textBox"></asp:TextBox>
                    <asp:TextBox ID="lblSubtotal1" runat="server" Width="115px" Enabled="False" CssClass="textBox"></asp:TextBox>
                </section>
                <section>
                    <asp:TextBox ID="lblItem2" runat="server" Width="220px" Enabled="False"></asp:TextBox>
                    <asp:TextBox ID="lblUnitPrice2" runat="server" Width="135px" Enabled="False" CssClass="textBox"></asp:TextBox>
                    <asp:TextBox ID="lblQuantity2" runat="server" Width="115px" Enabled="False" CssClass="textBox"></asp:TextBox>
                    <asp:TextBox ID="lblSubtotal2" runat="server" Width="115px" Enabled="False" CssClass="textBox"></asp:TextBox>
                </section>
                <section>
                    <asp:TextBox ID="lblItem3" runat="server" Width="220px" Enabled="False"></asp:TextBox>
                    <asp:TextBox ID="lblUnitPrice3" runat="server" Width="135px" Enabled="False" CssClass="textBox"></asp:TextBox>
                    <asp:TextBox ID="lblQuantity3" runat="server" Width="115px" Enabled="False" CssClass="textBox"></asp:TextBox>
                    <asp:TextBox ID="lblSubtotal3" runat="server" Width="115px" Enabled="False" CssClass="textBox"></asp:TextBox>
                </section>
                <section>
                    <asp:TextBox ID="lblTotal" runat="server" Width="220px" Text="Total:" Enabled="False" CssClass="textBox"></asp:TextBox>
                    <asp:TextBox ID="lblBlank" runat="server" Width="135px" Enabled="False"></asp:TextBox>
                    <asp:TextBox ID="lblBlank2" runat="server" Width="115px" Enabled="False"></asp:TextBox>
                    <asp:TextBox ID="lblGrandTotal" runat="server" Width="115px" Enabled="False" CssClass="textBox"></asp:TextBox>
                </section>
                <section>
                    <br />
                    <asp:Label ID="lblTerms" runat="server" Text="Terms: Invoice is due to be paid in 14 days."></asp:Label>
                    <br /><br />
                    <!--Displays Due date as Date Isseued + 14 days.-->
                    <asp:Label ID="lblDue" runat="server" Text="Due date: "></asp:Label>
                    <asp:Label ID="lblDueDate" runat="server"></asp:Label>
                    <br /><br />
                </section>
                <asp:Button ID="btnPrint" runat="server" Text="Print" />
                <asp:Button ID="btnToHome" runat="server" Text="Home" OnClick="btnToHome_Click"/>
                </div>
            </form>
        </main>
    
    <footer>
        <p>    
         </p>
    </footer>
</body>
</html>
