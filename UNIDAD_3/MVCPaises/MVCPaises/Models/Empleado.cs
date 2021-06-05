using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MVCPaises.Models
{
    [Table("tblEmpleado")]
    public class Empleado
    {
        [Key]
        public int IDEmpleado { get; set; }
        public string Nombre { get; set; }
        public string Genero { get; set; }
        public string Ciudad { get; set; }
        public int idDepartamento { get; set; }
    }
}