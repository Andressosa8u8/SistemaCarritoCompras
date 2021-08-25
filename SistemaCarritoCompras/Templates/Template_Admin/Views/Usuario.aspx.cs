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
    public partial class Usuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarUsuario();
            }
        }

        private void cargarUsuario()
        {
            List<Tbl_Usuario> listaUsu = new List<Tbl_Usuario>();
            listaUsu = Cn_Usuario.obtenerUsuarios();
            if (listaUsu != null)
            {
                grvUsuarios.DataSource = listaUsu;
                grvUsuarios.DataBind();
            }
        }

        protected void btn_agregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Templates/Template_Admin/Views/FormularioUsuario.aspx");
        }

        protected void grvUsuarios_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int codigo = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Editar")
            {
                Response.Redirect("~/Templates//Template_Admin/Views/FormularioUsuario.aspx?cod=" + codigo, true);
            }
            else if (e.CommandName == "Eliminar")
            {
                Tbl_Usuario usu = new Tbl_Usuario();
                usu = Cn_Usuario.obtenerUsuarioxId(codigo);
                if (usu != null)
                {
                    Cn_Usuario.delete(usu);
                    cargarUsuario();
                }
            }
        }
    }
}