using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


    public class PurchaseCollection
    {
        public List<Purchase> purchases { get; set; }

        public PurchaseCollection()
        {
            this.purchases = new List<Purchase>();
        }
    }
