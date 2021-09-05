using CapaDatos;
using CapaNegocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaCarritoCompras.Templates.Template_Principal.Views
{
    public partial class Menu1 : System.Web.UI.Page
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
                cargarProducto();
            }
        }

        private void cargarProducto()
        {
            List<Tbl_Producto> listaPro = new List<Tbl_Producto>();
            listaPro = Cn_Producto.obtenerProductos();
            if (listaPro != null)
            {
                rptCarrito.DataSource = listaPro;
                rptCarrito.DataBind();
            }
        }

        protected void lnbCerrarSession_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("../../../index.aspx");
        }

        protected void img_btn_seleccion_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}