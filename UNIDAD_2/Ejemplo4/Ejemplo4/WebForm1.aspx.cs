using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Ejemplo4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string CC = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString; using (SqlConnection con = new SqlConnection(CC))
            {
                SqlDataAdapter da = new SqlDataAdapter("spInventario", con);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string CC = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CC))
            {
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = new SqlCommand("spProductoPorId", con);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                da.SelectCommand.Parameters.AddWithValue("@IdProducto", Int32.Parse(txtIdProducto.Text));
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
    }
}