<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="printTest.aspx.cs" Inherits="A3GoodGums.printTest" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
<!--Page Title-->
    <title>Print Page</title>
    <!-- CCS Style Sheets applied -->
    <link href="styles.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            left: 270px;
            top: 120px;
            border: solid black 2px;
            padding-left: 10px;
        }
        .auto-style2 {
            width: 626px;
        }
        .auto-style3 {
            width: 620px;
        }
        #img {
            left: 450px;
        }
        #h2 {
            position: absolute;
            top: 140px;
            left: 540px;
            width: 300px;
            height: 90px;
        }
    </style>
</head>
<body>
    <div>
        <h3>Invoice for: 
            <% Response.Write(Request.Form.Get("txtFullName")); %>
        </h3>
    </div>
</body>
</html>
