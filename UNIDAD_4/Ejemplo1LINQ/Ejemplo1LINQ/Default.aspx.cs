using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejemplo1LINQ
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MuestraDataContext muestraDataContext = new MuestraDataContext();
            int[] numeros = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
            GridView1.DataSource = from numero in numeros where (numero % 2) == 0 select numero;
            // GridView1.DataSource = from Estudiantes in muestraDataContext.Estudiantes where Estudiantes.Genero == "Masculino" select Estudiantes;
            GridView1.DataBind();
        }
    }
}