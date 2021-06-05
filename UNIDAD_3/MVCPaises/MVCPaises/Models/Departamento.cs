using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MVCPaises.Models
{
    [Table("tblDepartamento")]
    public class Departamento
    {
        [Key]
        public int  idDepartamento { get; set; }
        public string NombreDepartamento { get; set; }
        public List<Empleado> Empleados { get; set; }
    }
}