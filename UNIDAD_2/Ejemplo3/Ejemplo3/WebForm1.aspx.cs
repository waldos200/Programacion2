using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Ejemplo3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string CC = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CC))
            {
                SqlCommand cmd = new SqlCommand("Select * from Productos; Select * from Clientes", con);
                con.Open();
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    ProductosGridView.DataSource = dr;
                    ProductosGridView.DataBind();
                    while (dr.NextResult())
                    {
                        ClientesGridView.DataSource = dr;
                        ClientesGridView.DataBind();
                    }
                }
            }
        }
    }
}