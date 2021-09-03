using CapaDatos;
using CapaNegocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaCarritoCompras.Templates.Template_Admin.Views
{
    public partial class Pedido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarPedido();
            }
        }

        private void cargarPedido()
        {
            List<Tbl_Pedido> listaPed = new List<Tbl_Pedido>();
            listaPed = Cn_Pedido.obtenerPedido();
            if (listaPed != null)
            {
                grvPedidos.DataSource = listaPed;
                grvPedidos.DataBind();
            }
        }

        protected void btn_agregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Templates/Template_Admin/Views/FormularioPedido.aspx");
        }

        protected void grvPedidos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int codigo = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Editar")
            {
                Response.Redirect("~/Templates/Template_Admin/Views/FormularioPedido.aspx?cod=" + codigo, true);
            }
            else if (e.CommandName == "Eliminar")
            {
                Tbl_Pedido ped = new Tbl_Pedido();
                ped = Cn_Pedido.obtenerPedidoxId(codigo);
                if (ped != null)
                {
                    Cn_Pedido.delete(ped);
                    cargarPedido();
                }
            }
        }
    }
}