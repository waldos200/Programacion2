using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlesWeb2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            lblInformacion.Text = "<h1><b>Información digitada:</b></h1><br> Nombre completo: " + txtNombre.Text + " <br>Teléfono: " + txtTelefono.Text + "<br>Email: " + txtEmail.Text + "<br>Edad: " + txtEdad.Text;
        }
    }
}