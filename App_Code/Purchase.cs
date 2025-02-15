using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;



	public class Purchase
	{
		public Purchase()
		{
			this.id = "";
			this.fullName = "";
			this.emailAddress = "";
			this.productname = "";
			this.unitprice = 0;
			this.quantity = 0;
		}
		//Constructor extracts data from front end page and stores on the variables user defined tags
		public Purchase(string id, string fullName, string emailAddress, string productname, int unitprice, int quantity)
		{
			this.id = id;
			this.fullName = fullName;
			this.emailAddress = emailAddress;
			this.productname = productname;
			this.unitprice = unitprice;
			this.quantity = quantity;
		}
		//Methods to read and write from XML file and back to Web form
		public string id { get; set; }
		public string fullName { get; set; }
		public string emailAddress { get; set; }
		public string productname { get; set; }
		public int unitprice { get; set; }
		public int quantity { get; set; }
	}
