using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A3GoodGums
{
    public partial class stocktrade : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnIncrease_Click(object sender, EventArgs e)
        {
            int counter = 0;
            counter = Int32.Parse(Count.Text);
            counter++;
            Count.Text = counter.ToString();
        }
        // Button allows user to decrease the quantity for stock reorder level
        protected void btnDecrease_Click(object sender, EventArgs e)
        {
            int counter2 = 0;
            counter2 = Int32.Parse(Count.Text);
            counter2--;
            Count.Text = counter2.ToString();
        }
        // Calculate button calculates the cost and total cost of stock required
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            int counter = Int32.Parse(Count.Text);
            int stock = Int32.Parse(txtStockQty1.Text);
            int reorder = counter - stock;
            txtReorder1.Text = Convert.ToString(reorder);

            int counter2 = Int32.Parse(Count.Text);
            int stock2 = Int32.Parse(txtStockQty2.Text);
            int reorder2 = counter2 - stock2;
            txtReorder2.Text = Convert.ToString(reorder2);

            int counter3 = Int32.Parse(Count.Text);
            int stock3 = Int32.Parse(txtStockQty3.Text);
            int reorder3 = counter3 - stock3;
            txtReorder3.Text = Convert.ToString(reorder3);

            double price1 = double.Parse(txtPrice1.Text);
            double sub1 = price1 * reorder;
            txtSubtotal1.Text = Convert.ToString("$" + sub1);

            double price2 = double.Parse(txtPrice2.Text);
            double sub2 = price2 * reorder2;
            txtSubtotal2.Text = Convert.ToString("$" + sub2);

            double price3 = double.Parse(txtPrice3.Text);
            double sub3 = price3 * reorder3;
            txtSubtotal3.Text = Convert.ToString("$" + sub3);

            txtTotalAmount.Text = Convert.ToString("$" + (sub1 + sub2 + sub3));
        }
    }
}