using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Ejemplo2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string CC = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CC))
            {
                SqlCommand cmd = new SqlCommand("spAgregarEmpleado", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Nombres", txtNombres.Text); 
                cmd.Parameters.AddWithValue("@Apellidos", txtApellidos.Text);
                cmd.Parameters.AddWithValue("@Genero", ddlGenero.SelectedValue);
                cmd.Parameters.AddWithValue("@Salario", txtSalario.Text);
                SqlParameter paramSalida = new SqlParameter();
                paramSalida.ParameterName = "@IDEmp";
                paramSalida.SqlDbType = System.Data.SqlDbType.Int;
                paramSalida.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(paramSalida);
                con.Open();
                cmd.ExecuteNonQuery();
                string IDEmpleado = paramSalida.Value.ToString();
                lblMensaje.Text = "ID Empleado = " + IDEmpleado;
            }
        }
    }
}