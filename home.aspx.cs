using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Xml.Serialization;

namespace A3GoodGums
{
    public partial class home : System.Web.UI.Page
    {
        const string FILENAME = "GoodGums.xml";
        string PATH = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            PATH = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, FILENAME);
            if (!IsPostBack)
            {
                // Purchase
                XmlSerializer xmlSerializer = new XmlSerializer(typeof(PurchaseCollection));
                FileStream fileStream = new FileStream(PATH, FileMode.Open);
                PurchaseCollection purchaseCollection = (PurchaseCollection)xmlSerializer.Deserialize(fileStream);
                gvPurchase.DataSource = purchaseCollection.purchases;

                // Customer
                //XmlSerializer xmlSerializer = new XmlSerializer(typeof(CustomerCollection));
                //FileStream fileStream = new FileStream(PATH, FileMode.Open);
                //CustomerCollection customerCollection = (CustomerCollection)xmlSerializer.Deserialize(fileStream);
                //gvPurchase.DataSource = customerCollection.customers;


                // Same
                gvPurchase.DataBind();

                fileStream.Close();
            }
        }
    }
}