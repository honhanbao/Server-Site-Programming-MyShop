using System;
using System.Web.UI.WebControls;

namespace A3GoodGums
{
    public partial class indexTest2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gv.DataBind();

                int count = 0;

                foreach (GridViewRow row in gv.Rows)
                {
                    int quantity;
                    if (int.TryParse(row.Cells[5].Text, out quantity))
                    {
                        if (quantity > 10)
                        {
                            count++;
                        }
                    }
                }

                txtLargeOrder.Text = count.ToString();

            }
        }
    }
}