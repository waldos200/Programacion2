using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Parcial2
{
    public partial class Formulario_web12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string CC = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CC))
            {
                SqlDataAdapter da = new SqlDataAdapter("spInventario", con);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataSet ds = new DataSet();
                da.Fill(ds);
                gvLibros.DataSource = ds;
                gvLibros.DataBind();
            }
        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            string CC = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CC))
            {
                SqlCommand cmd = new SqlCommand("spAgregarLibro", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Nombre", txtNombre.Text);
                cmd.Parameters.AddWithValue("@Precio", txtPrecio.Text);
                cmd.Parameters.AddWithValue("@Existencia", txtExistencia.Text);
                SqlParameter paramSalida = new SqlParameter();
                paramSalida.ParameterName = "@IDLibro";
                paramSalida.SqlDbType = System.Data.SqlDbType.Int;
                paramSalida.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(paramSalida);
                con.Open();
                cmd.ExecuteNonQuery();
                string IdLibro = paramSalida.Value.ToString();
                lblMensaje.Text = "ID Libro = " + IdLibro;
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string CC = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CC))
            {
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = new SqlCommand("spLibroPorId", con);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                da.SelectCommand.Parameters.AddWithValue("@IdLibro", Int32.Parse(txtId.Text));
                DataSet ds = new DataSet();
                da.Fill(ds);
                gvLibros.DataSource = ds;
                gvLibros.DataBind();
            }
        }

        protected void btnCargar_Click(object sender, EventArgs e)
        {
            string cc = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString;
            SqlConnection con = new SqlConnection(cc);
            string sqlConsulta = "select * from Libros where IDLibro = " + txtId.Text;
            SqlDataAdapter da = new SqlDataAdapter(sqlConsulta, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "Libros");
            ViewState["SQL_Consulta"] = sqlConsulta;
            ViewState["DATASET"] = ds;
            if (ds.Tables["Libros"].Rows.Count > 0)
            {
                DataRow fila = ds.Tables["Libros"].Rows[0];
                txtId.Text = fila["IDLibro"].ToString();
                txtNombre.Text = fila["Nombre"].ToString();
                txtPrecio.Text = fila["Precio"].ToString();
                txtExistencia.Text = fila["Existencia"].ToString();
                lblMensaje.ForeColor = System.Drawing.Color.Green;
                lblMensaje.Text = "Registro encontrado";
            }
            else
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "No existe un estudiante con el código = " + txtId.Text;
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
            if (ds.Tables["Libros"].Rows.Count > 0)
            {
                DataRow fila = ds.Tables["Libros"].Rows[0];
                fila["Nombre"] = txtNombre.Text;
                fila["Precio"] = txtPrecio.Text;
                fila["Existencia"] = txtExistencia.Text;
            }
            int filasActualizadas = da.Update(ds, "Libros");
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
        }

        protected void btnCarga_Click(object sender, EventArgs e)
        {
            string CC = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CC))
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Libros", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                Cache["datos"] = ds;
                gvLibros.DataSource = ds;
                gvLibros.DataBind();
            }
        }

        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            string CC = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CC))
            {
                SqlCommand cmd = new SqlCommand("spEliminarLibro", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdLibro", txtId.Text);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}