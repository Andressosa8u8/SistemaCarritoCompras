using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaCarritoCompras.Templates.Template_Principal.Views
{
    public partial class Principal3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Usuario"] != null)
                {
                    string usulogeado = Session["Usuario"].ToString();
                }
                else
                {
                    Response.Redirect("../../../index.aspx");
                }
            }
        }

        protected void lnbCerrarSession_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("../../../index.aspx");
        }

        protected void lbn_carrito_Click(object sender, EventArgs e)
        {
            Response.Redirect("Detalle.aspx");
        }
    }
}