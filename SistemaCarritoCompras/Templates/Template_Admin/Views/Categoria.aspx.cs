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
    public partial class Categoria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarCategoria();
            }
        }

        private void cargarCategoria()
        {
            List<Tbl_Categoria> listaCategorias = new List<Tbl_Categoria>();
            listaCategorias = Cn_Categoria.obtenerCategorias();
            if (listaCategorias != null)
            {
                grvCategorias.DataSource = listaCategorias;
                grvCategorias.DataBind();
            }
        }

        protected void btn_agregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Templates/Template_Admin/Views/FormularioCategoria.aspx");
        }

        protected void grvCategorias_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int codigo = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Editar")
            {
                Response.Redirect("~/Templates//Template_Admin/Views/FormularioCategoria.aspx?cod=" + codigo, true);
            }
            else if (e.CommandName == "Eliminar")
            {
                Tbl_Categoria cat = new Tbl_Categoria();
                cat = Cn_Categoria.obtenerCategoriaxId(codigo);
                if (cat != null)
                {
                    Cn_Categoria.delete(cat);
                    cargarCategoria();
                }
            }
        }
    }
}