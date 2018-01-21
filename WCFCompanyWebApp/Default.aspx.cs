using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WCFCompanyWebApp.SupplierServiceReference;

namespace WCFCompanyWebApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SupplierServiceClient client = new SupplierServiceClient();

            Label1.Text = client.insertOrder(12);
        }
    }
}