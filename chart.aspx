<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chart.aspx.cs" Inherits="A3GoodGums.chart" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
	<title>Chart page</title>
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
		.gridview{
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
	<form id="formChart" runat="server">
		<h1>Revenue over 5-year period</h1>

		<asp:Chart ID="Chart1" runat="server" Height="399px" Width="795px">
			<Titles>
				<asp:Title Text="Revenue over 5-year period">
				</asp:Title>
			</Titles>
			<Series>
				<asp:Series ChartType="Line" Name="Series1" BorderWidth="5" BorderDashStyle="Dash" BorderColor="Blue">
					<Points>
						<asp:DataPoint AxisLabel="2018" YValues="800" />
						<asp:DataPoint AxisLabel="2019" YValues="900" />
						<asp:DataPoint AxisLabel="2020" YValues="600" />
						<asp:DataPoint AxisLabel="2021" YValues="700" />
						<asp:DataPoint AxisLabel="2022" YValues="500" />
					</Points>
				</asp:Series>
			</Series>
			<ChartAreas>
				<asp:ChartArea Name="ChartArea1">
					<AxisX Title="Years"></AxisX>
					<AxisY Title="Revenue (All numbers in thousands)"></AxisY>
				</asp:ChartArea>
			</ChartAreas>
		</asp:Chart>	
	</form>
	<!--Footer-->
	<footer>
			<p>    
				@GoodGums
			</p>
	</footer>
</body>
</html>
