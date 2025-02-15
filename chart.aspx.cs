using System;
using System.Web.UI.DataVisualization.Charting;




namespace A3GoodGums
{
    public partial class chart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Find the series you want to add a point to
            Series series = Chart1.Series["Series1"];

            // Add a new data point to the series
            // series.Points.AddXY("2023", 1000);
        }

    }
}