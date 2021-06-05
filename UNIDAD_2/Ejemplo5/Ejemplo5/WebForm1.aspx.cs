using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Ejemplo5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string CC = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CC))
            {
                SqlDataAdapter da = new SqlDataAdapter("spInformacion", con);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataSet ds = new DataSet();
                da.Fill(ds);
                ds.Tables[0].TableName = "Clientes";
                ds.Tables[1].TableName = "Productos"; 
                GridView1.DataSource = ds.Tables["Clientes"];
                GridView1.DataBind();
                GridView2.DataSource = ds.Tables["Productos"];
                GridView2.DataBind();
            }
        }
    }
}