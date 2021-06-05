using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejemplo3LINQ
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private DataTable ConvertirEmpleadosParaMostrar(List<Empleado> empleados)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("ID");
            dt.Columns.Add("Nombre");
            dt.Columns.Add("Genero");
            dt.Columns.Add("SalarioAnual");
            dt.Columns.Add("PagoXHora");
            dt.Columns.Add("HoraXSemana");
            dt.Columns.Add("Discriminador");

            foreach(Empleado empleado in empleados)
            {
                DataRow dr = dt.NewRow();
                dr["ID"] = empleado.ID;
                dr["Nombre"] = empleado.Nombre;
                dr["Genero"] = empleado.Genero;

                if(empleado is EmpleadoPermanente)
                {
                    dr["SalarioAnual"] = ((EmpleadoPermanente)empleado).SalarioAnual;
                    dr["Discriminador"] = "Permanente";
                }
                else
                {
                    dr["PagoXHora"] = ((EmpleadoXContrato)empleado).PagoXHora;
                    dr["HoraXSemana"] = ((EmpleadoXContrato)empleado).HorasXSemana;
                    dr["Discriminador"] = "Contrato";
                }
                dt.Rows.Add(dr);
            }
            return dt;
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DatosDataContext dbContext = new DatosDataContext();
            dbContext.Log = Response.Output;

            switch (RadioButtonList1.SelectedValue)
            {
                case "Permanente":
                    GridView1.DataSource = dbContext.Empleado.OfType<EmpleadoPermanente>().ToList();
                    GridView1.DataBind();
                    break;
                case "Contrato":
                    GridView1.DataSource = dbContext.Empleado.OfType<EmpleadoXContrato>().ToList();
                    GridView1.DataBind();
                    break;
                default:
                    GridView1.DataSource = ConvertirEmpleadosParaMostrar(dbContext.Empleado.ToList());
                    GridView1.DataBind();
                    break;
            }
        }

        protected void btnAgregarEmps_Click(object sender, EventArgs e)
        {
            using(DatosDataContext dbContext = new DatosDataContext())
            {
                EmpleadoPermanente empleadoPermanente = new EmpleadoPermanente
                {
                    ID = 8,
                    Nombre = "Eva",
                    Genero = "Femenino",
                    SalarioAnual = 65000
                };

                EmpleadoXContrato empleadoXContrato = new EmpleadoXContrato
                {
                    ID = 9,
                    Nombre = "Cristina",
                    Genero = "Femeino",
                    PagoXHora = 50,
                    HorasXSemana = 80
                };

                dbContext.Empleado.InsertOnSubmit(empleadoPermanente);
                dbContext.Empleado.InsertOnSubmit(empleadoXContrato);
                dbContext.SubmitChanges();
            }
        }
    }
}