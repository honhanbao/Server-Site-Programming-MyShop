using System;


using System.IO;

using System.Xml.Serialization;



namespace A3GoodGums
{

    public partial class index : System.Web.UI.Page
    {
        const string FILENAME = "GoodGums.xml";
        string PATH = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        private void BindGridView()
        {
            // PATH = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, FILENAME);
            PATH = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "App_Data", FILENAME);


            XmlSerializer xmlSerializer = new XmlSerializer(typeof(PurchaseCollection));
            FileStream fileStream = new FileStream(PATH, FileMode.Open);
            PurchaseCollection purchaseCollection = (PurchaseCollection)xmlSerializer.Deserialize(fileStream);
            gvPurchase.DataSource = purchaseCollection.purchases;
            gvPurchase.DataBind();

            fileStream.Close();

            // Calculate large orders
            int largeOrders = 0;
            foreach (Purchase purchase in purchaseCollection.purchases)
            {
                if (purchase.quantity >= 10)
                {
                    largeOrders += 1;
                }
            }
            // update to element
            txtLargeOrder.Text = largeOrders.ToString();
        }


    }
}



// gvPurchase
// namespace A3GoodGums


// PurchaseCollection:
// Right click on the .cs file in the App_Code folder and check its properties.
// Make sure the "Build Action" is set to "Compile"

// Purchase class: methods and variables' names must match format in XML file.





// Another approach

/*
            <asp:GridView ID="gvPurchase" runat="server" CssClass="gridview">
                  <Columns>
                    <asp:BoundField DataField="id" HeaderText="Purchase ID" />
                    <asp:BoundField DataField="fullName" HeaderText="Full Name" />
                    <asp:BoundField DataField="emailAddress" HeaderText="Email Address" />
                    <asp:BoundField DataField="productname" HeaderText="Product Name" />
                    <asp:BoundField DataField="unitprice" HeaderText="Unit Price" />
                    <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                  </Columns>
            </asp:GridView>
 */

/*
 
                // Get the path to the XML file
                string path = Server.MapPath("~/App_Data/GoodGums.xml");

                // Create an XmlSerializer instance
                XmlSerializer serializer = new XmlSerializer(typeof(PurchaseCollection));

                // Open the XML file using a FileStream
                using (FileStream stream = new FileStream(path, FileMode.Open))
                {
                    // Deserialize the XML data to a PurchaseCollection object
                    PurchaseCollection purchaseCollection = (PurchaseCollection)serializer.Deserialize(stream);

                    // Bind the PurchaseCollection to the GridView
                    gvPurchase.DataSource = purchaseCollection.purchases;
                    gvPurchase.DataBind();
                }
 */

