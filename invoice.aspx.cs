using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A3GoodGums
{
    public partial class invoice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Submit button re-directs to print page if validation is met
        protected void btnSubmitInvoice_Click(object sender, EventArgs e)
        {
            Response.Redirect("print.aspx");
        }
    }
}