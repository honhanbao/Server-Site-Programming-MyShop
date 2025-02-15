using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A3GoodGums
{
    public partial class print : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Gets Invoice Name from Invoice page and applies to Print Page
            string invName = Request.Form["txtFullName"];
            lblInvName.Text = invName;

            // Gets Item Name from Invoice page and applies to Print Page
            string itemNm1 = Request.Form["txtItemName1"];
            lblItem1.Text = itemNm1;

            // Gets Price from Invoice page and applies to Print Page
            double price1 = Double.Parse(Request.Form["txtUnitPrice1"]);
            lblUnitPrice1.Text = price1.ToString("C");

            // Gets Quantity from Invoice page and applies to Print Page
            int quantity1 = Int32.Parse(Request.Form["txtQuantity1"]);
            lblQuantity1.Text = quantity1.ToString();

            // Calculates the Total of Price1 and Quantity1
            double total = price1 * quantity1;
            lblSubtotal1.Text = total.ToString("C");

            // Gets Item2 Name from Invoice page and applies to Print Page
            string itemNm2 = Request.Form["txtItemName2"];
            lblItem2.Text = itemNm2;

            // Gets Price2 from Invoice page and applies to Print Page
            double price2 = Double.Parse(Request.Form["txtUnitPrice2"]);
            lblUnitPrice2.Text = price2.ToString("C");

            // Gets Quantity2 from Invoice page and applies to Print Page
            int quantity2 = Int32.Parse(Request.Form["txtQuantity2"]);
            lblQuantity2.Text = quantity2.ToString();

            // Calculates the Total of Price2 and Quantity2
            double total2 = price2 * quantity2;
            lblSubtotal2.Text = total2.ToString("C");

            // Gets Item3 Name from Invoice page and applies to Print Page
            string itemNm3 = Request.Form["txtItemName3"];
            lblItem3.Text = itemNm3;

            // Gets Price3 from Invoice page and applies to Print Page
            double price3 = Double.Parse(Request.Form["txtUnitPrice3"]);
            lblUnitPrice3.Text = price3.ToString("C");

            // Gets Quantity3 from Invoice page and applies to Print Page
            int quantity3 = Int32.Parse(Request.Form["txtQuantity3"]);
            lblQuantity3.Text = quantity3.ToString();

            // Calculates the Total of Price3 and Quantity3
            double total3 = price3 * quantity3;
            lblSubtotal3.Text = total3.ToString("C");

            // Calculates teh Grand Total by adding all Total amounts together
            double grandTotal = total + total2 + total3;
            lblGrandTotal.Text = grandTotal.ToString("C");

            // Add today's date only for lblDate
            lblDate.Text = DateTime.Now.ToString("d");

            // Adds 14 days to todays date for the due date.
            lblDueDate.Text = DateTime.Now.AddDays(14).ToShortDateString();
        }

        protected void btnToHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}