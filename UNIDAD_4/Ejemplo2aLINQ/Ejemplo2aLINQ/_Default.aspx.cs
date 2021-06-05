using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejemplo2aLINQ
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (MuestraDataContext dbContext = new MuestraDataContext())
            {
                dbContext.Log = Response.Output;

                // DataLoadOptions
                /* DataLoadOptions opciones = new DataLoadOptions();
                opciones.LoadWith<Departamentos>(d => d.Empleados);
                dbContext.LoadOptions = opciones;

                GridView1.DataSource = dbContext.Departamentos; */
                // Proyeccion
                GridView1.DataSource = from dept in dbContext.Departamentos
                                       select new
                                       {
                                           Departamento = dept.Departamento,
                                           Empleados = dept.Empleados
                                       };
                GridView1.DataBind();
            }
        }
    }
}