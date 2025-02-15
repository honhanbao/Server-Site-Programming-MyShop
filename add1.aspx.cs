using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace A3GoodGums
{
    public partial class add1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddCustomer_Click(object sender, EventArgs e)
        {
            // Load the XML document
            string xmlPath = Server.MapPath("~/App_Data/GoodGums.xml");
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load(xmlPath);

            // Create a new customer element
            XmlElement customerElement = xmlDoc.CreateElement("Purchase");

            // Create the child elements and set their values
            XmlElement idElement = xmlDoc.CreateElement("id");
            idElement.InnerText = txtId.Text;
            customerElement.AppendChild(idElement);

            XmlElement fullNameElement = xmlDoc.CreateElement("fullName");
            fullNameElement.InnerText = txtFullName.Text;
            customerElement.AppendChild(fullNameElement);

            XmlElement emailAddressElement = xmlDoc.CreateElement("emailAddress");
            emailAddressElement.InnerText = txtEmailAddress.Text;
            customerElement.AppendChild(emailAddressElement);

            XmlElement productNameElement = xmlDoc.CreateElement("productname");
            productNameElement.InnerText = txtProductName.Text;
            customerElement.AppendChild(productNameElement);

            XmlElement unitPriceElement = xmlDoc.CreateElement("unitprice");
            unitPriceElement.InnerText = txtUnitPrice.Text;
            customerElement.AppendChild(unitPriceElement);

            XmlElement quantityElement = xmlDoc.CreateElement("quantity");
            quantityElement.InnerText = txtQuantity.Text;
            customerElement.AppendChild(quantityElement);

            // Add the new customer element to the XML document
            XmlNode purchasesNode = xmlDoc.SelectSingleNode("//purchases");
            purchasesNode.AppendChild(customerElement);

            // Save the XML document
            xmlDoc.Save(xmlPath);

            // Display a success message
            lblAddMessage.Text = "Customer added successfully!";
            lblAddMessage.Visible = true;

            // Clear the form
            txtId.Text = "";
            txtFullName.Text = "";
            txtEmailAddress.Text = "";
            txtProductName.Text = "";
            txtUnitPrice.Text = "";
            txtQuantity.Text = "";
        }

    }
}