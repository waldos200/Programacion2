using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Ejemplo7
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCargar_Click(object sender, EventArgs e)
        {
            string cc = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString;
            SqlConnection con = new SqlConnection(cc);
            string sqlConsulta = "select * from Estudiantes where IdEstudiante = " + txtID.Text;
            SqlDataAdapter da = new SqlDataAdapter(sqlConsulta, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "Estudiantes"); 
            ViewState["SQL_Consulta"] = sqlConsulta;
            ViewState["DATASET"] = ds;
            if (ds.Tables["Estudiantes"].Rows.Count > 0)
            {
                DataRow fila = ds.Tables["Estudiantes"].Rows[0];
                txtNombres.Text = fila["Nombres"].ToString();
                txtApellidos.Text = fila["Apellidos"].ToString();
                ddlGenero.SelectedValue = fila["Genero"].ToString();
                txtEmail.Text = fila["Email"].ToString();
                txtTelefono.Text = fila["Telefono"].ToString();
                lblMensaje.ForeColor = System.Drawing.Color.Green;
                lblMensaje.Text = "Registro encontrado";
            }
            else
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "No existe un estudiante con el código = " + txtID.Text;
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            string cc = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString;
            SqlConnection con = new SqlConnection(cc);
            SqlDataAdapter da = new
            SqlDataAdapter((string)ViewState["SQL_Consulta"], con);
            SqlCommandBuilder builder = new SqlCommandBuilder(da);
            DataSet ds = (DataSet)ViewState["DATASET"];
            if (ds.Tables["Estudiantes"].Rows.Count > 0)
            {
                DataRow fila = ds.Tables["Estudiantes"].Rows[0];
                fila["Nombres"] = txtNombres.Text;
                fila["Apellidos"] = txtApellidos.Text; fila["Genero"] = ddlGenero.SelectedValue;
                fila["Email"] = txtEmail.Text;
                fila["Telefono"] = txtTelefono.Text;
            }
            int filasActualizadas = da.Update(ds, "Estudiantes");
            if (filasActualizadas > 0)
            {
                lblMensaje.ForeColor = System.Drawing.Color.Green;
                lblMensaje.Text = "Registro actualizado";
            }
            else
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "Ningún registro actualizado";
            }
            lblCommandInsert.Text = builder.GetInsertCommand().CommandText;
            lblCommandUpdate.Text = builder.GetUpdateCommand().CommandText;
            lblCommandDelete.Text = builder.GetDeleteCommand().CommandText;
        }
    }
}