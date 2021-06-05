using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCPaises.Models;

namespace MVCPaises.Controllers
{
    public class EmpleadoController : Controller
    {
        // GET: Empleado
        public ActionResult Index(int id)
        {
            EmpleadoContext empleadoContext = new EmpleadoContext();
            List<Empleado> empleados = empleadoContext.Empleados.Where(emp => emp.idDepartamento == id).ToList();

            return View(empleados);
        }
        public ActionResult Detalle(int id)
        {
            // Código sin base de datos
            /* Empleado empleado = new Empleado()
            {
                IDEmpleado = 101,
                Nombre = "Juan Pérez",
                Genero = "Masculino",
                Ciudad = "San Salvador"
            }; */

            // Código coon base de datos
            EmpleadoContext empleadoContext = new EmpleadoContext();
            Empleado empleado = empleadoContext.Empleados.Single(emp => emp.IDEmpleado == id);

            return View(empleado);
        }
    }
}