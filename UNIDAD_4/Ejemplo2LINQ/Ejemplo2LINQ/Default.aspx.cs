using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Ejemplo2LINQ
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // MuestraDataContext dbContext = new MuestraDataContext();
            // GridView1.DataSource = dbContext.Empleados;
            // gvDatos.DataSource = from empleado in dbContext.Empleados where empleado.Genero == "Masculino" orderby empleado.Salario descending select empleado;
            // gvDatos.DataBind();
        }

        private void Obtener()
        {
            MuestraDataContext dbContext = new MuestraDataContext();
            gvDatos.DataSource = dbContext.obtenerEmpleado();
            gvDatos.DataBind();
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            Obtener();
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            gvDatos.DataSource = null;
            gvDatos.DataBind();
            lblDepto.Text = "";
        }

        protected void btnInsertar_Click(object sender, EventArgs e)
        {
            using(MuestraDataContext dbContext = new MuestraDataContext())
            {
                SqlCommand cmd = new SqlCommand("insertarEmpleado");
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Nombre", txtNombre.Text);
                cmd.Parameters.AddWithValue("@Apellido", txtApellido.Text);
                cmd.Parameters.AddWithValue("@Genero", txtGenero.Text);
                cmd.Parameters.AddWithValue("@Salario", txtSalario.Text);
                SqlParameter paramSalida = new SqlParameter();
                paramSalida.ParameterName = "@idEmp";
                paramSalida.SqlDbType = System.Data.SqlDbType.Int;
                paramSalida.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(paramSalida);
            }
            Obtener();
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            using(MuestraDataContext dbContext = new MuestraDataContext())
            {
                Empleados empleado = dbContext.Empleados.SingleOrDefault(x => x.idEmp == 7);
                empleado.Salario = 764.43M;
                dbContext.SubmitChanges();
            }
            Obtener();
        }

        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            using(MuestraDataContext dbContext = new MuestraDataContext())
            {
                Empleados empleado = dbContext.Empleados.SingleOrDefault(x => x.idEmp == 7);
                dbContext.Empleados.DeleteOnSubmit(empleado);
                dbContext.SubmitChanges();
            }
            Obtener();
        }

        protected void btnEmpsXDept_Click(object sender, EventArgs e)
        {
            using(MuestraDataContext dbContext = new MuestraDataContext())
            {
                string nombreDept = string.Empty;

                gvDatos.DataSource = dbContext.EmpleadosPorDepto(1, ref nombreDept);
                gvDatos.DataBind();
                lblDepto.Text = "Departamento = " + nombreDept;
            }
        }
    }
}