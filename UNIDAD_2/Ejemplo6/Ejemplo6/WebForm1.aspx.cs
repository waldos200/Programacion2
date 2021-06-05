using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Ejemplo6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCargar_Click(object sender, EventArgs e)
        {
            if (Cache["datos"] == null)
            {
                string CC = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CC))
                {
                    SqlDataAdapter da = new SqlDataAdapter("select * from productos", con);
                    DataSet ds = new DataSet(); 
                    da.Fill(ds);
                    Cache["datos"] = ds;
                    gvProductos.DataSource = ds;
                    gvProductos.DataBind();
                }
                lblMensaje.Text = "Datos cargados de la base de datos";
            }
            else
            {
                gvProductos.DataSource = (DataSet)Cache["datos"];
                gvProductos.DataBind();
                lblMensaje.Text = "Datos cargados de la base de la memoria cache";
            }
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            if (Cache["datos"] != null)
            {
                Cache.Remove("datos");
                lblMensaje.Text = "El DataSet ha sido borrado de la memoria cache";
                gvProductos.DataSource = null;
                gvProductos.DataBind();
            }
            else
            {
                lblMensaje.Text = "No hay nada que borrar en la memoria cache";
            }
        }
    }
}