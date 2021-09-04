using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaNegocio;

namespace SistemaCarritoCompras.Templates.Template_Admin.Views
{
    public partial class Producto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarProducto();
            }
        }

        private void cargarProducto()
        {
            List<Tbl_Producto> listaPro = new List<Tbl_Producto>();
            listaPro = Cn_Producto.obtenerProductos();
            if (listaPro != null)
            {
                grvProductos.DataSource = listaPro;
                grvProductos.DataBind();
            }
        }

        protected void grvProductos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int codigo = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Editar")
            {
                Response.Redirect("~/Templates//Template_Admin/Views/FormProduct.aspx?cod=" + codigo, true);
            }
            else if (e.CommandName == "Eliminar")
            {
                Tbl_Producto pro = new Tbl_Producto();
                pro = Cn_Producto.obtenerProductoxId(codigo);
                if (pro != null)
                {
                    Cn_Producto.delete(pro);
                    cargarProducto();
                }
            }
        }

        protected void btn_agregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Templates/Template_Admin/Views/FormProduct.aspx");
        }
    }
}