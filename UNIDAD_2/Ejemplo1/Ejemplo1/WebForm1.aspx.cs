using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Ejemplo1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /* SqlConnection con = new SqlConnection("data source=.; database=Ejemplo1; integrated security = SSPI");
            SqlCommand cmd = new SqlCommand("Select * from Productos", con); */
            /* con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            con.Close(); */ // Este bloque cometado es una opcion basica para conectar a la base de datos pero no evalua los errores
            /* try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            catch
            {
                Response.Write("<script>alert('Ocurrió un error')</script>");
            }
            finally
            {
                con.Close();
            } */
            /* string CC = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString;

            using (SqlConnection con = new SqlConnection(CC))
            {
                SqlCommand cmd = new SqlCommand("Select * from Productos", con);

                con.Open();

                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
            } */
            /* string CC = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString; // Codigo con ExecuteReader()
            using (SqlConnection con = new SqlConnection(CC))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "Select * from Productos"; con.Open();
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
            } */
            /* string CC = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString; // Codigo con ExcecuteScalar()
            using (SqlConnection con = new SqlConnection(CC))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "Select count(ID) from Productos";
                con.Open();
                int totalFilas = (int)cmd.ExecuteScalar();
                Response.Write("Total de filas = " + totalFilas.ToString());
            } */
            /* string CC = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString; using (SqlConnection con = new SqlConnection(CC)) // Codio con ExecuteNonQuery()
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "insert into Productos values (6, 'Router', 128.43, 63)";
                con.Open();
                try
                {
                    int totalFilasAfectadas = cmd.ExecuteNonQuery();
                    Response.Write("Total de filas insertadas = " + totalFilasAfectadas.ToString());
                }
                catch
                {
                    Response.Write("Violación de clave primaria. No se pueden insertar valores duplicados");
                }
            } */
            /* string CC = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString; // Modificar un registro Ejemplo2
            using (SqlConnection con = new SqlConnection(CC))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "update Productos set Existencia=45 where ID=6";
                con.Open();
                int totalFilasAfectadas = cmd.ExecuteNonQuery();
                Response.Write("Total de filas modificadas = " + totalFilasAfectadas.ToString());
            } */
            /* string CC = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString; // Eliminar un registro 
            using (SqlConnection con = new SqlConnection(CC))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "delete Productos where ID=6";
                con.Open();
                int totalFilasAfectadas = cmd.ExecuteNonQuery();
                Response.Write("Total de filas eliminadas = " + totalFilasAfectadas.ToString());
            } */
            /* string CC = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString; // Este codigo puede que borre si ponen un codigo mal intencionado 
            using (SqlConnection con = new SqlConnection(CC))
            {
                string comando = "Select * from Productos where nombre like '" +
                TextBox1.Text + "%'";
                SqlCommand cmd = new SqlCommand(comando, con);
                con.Open();
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
            } */
            /* string CC = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CC))
            {
                string comando = "Select * from Productos where nombre like @nombreProducto";
                SqlCommand cmd = new SqlCommand(comando, con);
                cmd.Parameters.AddWithValue("@nombreProducto", TextBox1.Text + "%");
                con.Open(); GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
            } */
            string CC = ConfigurationManager.ConnectionStrings["CCBD"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CC))
            {
                string comando = "spProductosPorNombre";
                SqlCommand cmd = new SqlCommand(comando, con); 
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@nombreProducto", TextBox1.Text);
                con.Open();
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
            }
        }
    }
}