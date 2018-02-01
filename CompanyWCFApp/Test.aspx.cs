using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChapterB2B
{
    public partial class Test : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList list = (DropDownList)sender;
            int categoryId = Int32.Parse(list.SelectedValue);
            SqlConnection con = new SqlConnection(connStr);
            string sql = "select * from Product where categoryID = " + categoryId;

            SqlDataAdapter sda = new SqlDataAdapter(sql,con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            ListView1.DataSourceID = null;
            ListView1.DataSource = dt;
            ListView1.DataBind();




        }
    }
}