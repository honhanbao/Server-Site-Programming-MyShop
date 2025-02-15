<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="A3GoodGums.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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

    <!--Log in secsion-->
    <form id="loginForm" runat="server">
        <!--1. Fieldset-->
        <fieldset>
            <!--Page title-->
            <h1>This is log in page</h1>

            <!--UseName-->
            <div>
                <asp:Label ID="lblUsername" runat="server" Text="User Name"  CssClass="margin labelWidth"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="margin"></asp:TextBox>
                <!--make sure ControlToValidate has correct Id, and Text is not blank-->
                <asp:RequiredFieldValidator ID="vldUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Please enter a value for user's name" Text="*"></asp:RequiredFieldValidator>
            </div>

            <!--Password-->
            <div> 
                <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="margin labelWidth"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="margin"></asp:TextBox>
                <!--make sure ControlToValidate has correct Id, and Text is not blank-->
                <asp:RequiredFieldValidator ID="vldPasword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter a value for user's password" Text="*"></asp:RequiredFieldValidator>
            </div>

            <div>
                <asp:Button ID="btnSubmit" runat="server" Text="Log in" CssClass="btn margin" CausesValidation="True" onClick="btnSubmit_Click"/> 
                <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" Visible="false"></asp:Label>
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
