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
    public partial class Proveedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarProveedor();
            }
        }

        private void cargarProveedor()
        {
            List<Tbl_Proveedor> listaPro = new List<Tbl_Proveedor>();
            listaPro = Cn_Proveedor.obtenerProveedores();
            if (listaPro != null)
            {
                grvProveedores.DataSource = listaPro;
                grvProveedores.DataBind();
            }
        }

        protected void btn_agregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Templates/Template_Admin/Views/FormularioProveedor.aspx");
        }

        protected void grvProveedores_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int codigo = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Editar")
            {
                Response.Redirect("~/Templates//Template_Admin/Views/FormularioProveedor.aspx?cod=" + codigo, true);
            }
            else if (e.CommandName == "Eliminar")
            {
                Tbl_Proveedor prov = new Tbl_Proveedor();
                prov = Cn_Proveedor.obtenerProveedorxId(codigo);
                if (prov != null)
                {
                    Cn_Proveedor.delete(prov);
                    cargarProveedor();
                }
            }
        }
    }
}