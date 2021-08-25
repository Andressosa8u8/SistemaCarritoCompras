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
    public partial class TipoUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarTipoUsuario();
            }
        }

        private void cargarTipoUsuario()
        {
            List<Tbl_TipoUsuario> listatusu = new List<Tbl_TipoUsuario>();
            listatusu = Cn_TipoUsuario.obtenerTusuarios();
            if (listatusu != null)
            {
                grvTipoUsuario.DataSource = listatusu;
                grvTipoUsuario.DataBind();
            }
        }

        protected void btn_agregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Templates/Template_Admin/Views/FormularioTipoUsuario.aspx");
        }

        protected void grvTipoUsuario_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int codigo = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Editar")
            {
                Response.Redirect("~/Templates//Template_Admin/Views/FormularioTipoUsuario.aspx?cod=" + codigo, true);
            }
            else if (e.CommandName == "Eliminar")
            {
                Tbl_TipoUsuario tusu = new Tbl_TipoUsuario();
                tusu = Cn_TipoUsuario.obtenerTipoUsuarioxId(codigo);
                if (tusu != null)
                {
                    Cn_TipoUsuario.delete(tusu);
                    cargarTipoUsuario();
                }
            }
        }
    }
}