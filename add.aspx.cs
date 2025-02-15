using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using Newtonsoft.Json;
using System.Xml.Serialization;
using System.Diagnostics;

namespace A3GoodGums
{
    public partial class add : System.Web.UI.Page
    {
        const string FILENAME = "GoodGums.xml";
        string PATH = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "App_Data", FILENAME);
        protected void Page_Load(object sender, EventArgs e)
        {
            //PATH = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, FILENAME);
        }

        protected void btnAddCustomer_Click(object sender, EventArgs e)
        {
            // Create instance Purchase
            string customerID = txtId.Text;
            string customerName = txtFullName.Text;
            string customerEmail = txtEmailAddress.Text;
            string productName = txtProductName.Text;
            int unitPrice = Int32.Parse(txtUnitPrice.Text);
            int quantity = Int32.Parse(txtQuantity.Text);
            Purchase purchase = new Purchase(customerID, customerName, customerEmail, productName, unitPrice, quantity);

            // Create an XmlSerializer object for serializing and deserializing XML data into C# objects
            XmlSerializer xmlSerializer = new XmlSerializer(typeof(PurchaseCollection));
            FileStream fileStream = new FileStream(PATH, FileMode.Open);
            PurchaseCollection purchaseCollection = (PurchaseCollection)xmlSerializer.Deserialize(fileStream);
            fileStream.Close();

            // Add the new Purchase object to the purchases list within the purchaseCollection object
            // Write the updated purchaseCollection object back to the XML file
            // The xmlSerializer.Serialize method serializes the purchaseCollection object into XML format
            // and writes it to the file using the StreamWriter object
            purchaseCollection.purchases.Add(purchase);
            StreamWriter streamWriter = new StreamWriter(PATH);
            xmlSerializer.Serialize(streamWriter, purchaseCollection);
            streamWriter.Close();
















            /*
            Purchase purchase = new Purchase(customerID, customerName, customerEmail, productname, unitPrice, quantity);

            PurchaseCollection purchaseCollection = (PurchaseCollection)Session["purchaseCollection"];
            purchaseCollection.purchases.Add(purchase);
            Session["purchaseCollection"] = purchaseCollection;

            // PurchaseCollection purchaseCollection = (PurchaseCollection)Session["purchaseCollection"];
            XmlSerializer xmlSerializer = new XmlSerializer(typeof(PurchaseCollection));
            StreamWriter streamWriter = new StreamWriter(PATH);
            xmlSerializer.Serialize(streamWriter, purchaseCollection);
            streamWriter.Close();

            lblAddMessage.Text = "Added  " + purchaseCollection.purchases;
            lblAddMessage.Visible = true;
            */
        }
    }
}