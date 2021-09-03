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
    public partial class FormularioProveedor : System.Web.UI.Page
    {

        private Tbl_Proveedor provinfo = new Tbl_Proveedor();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request["cod"] != null)
                {
                    int codigo = Convert.ToInt32(Request["cod"]);
                    provinfo = Cn_Proveedor.obtenerProveedorxId(codigo);
                    btn_Modificar.Visible = true;

                    if (provinfo != null)
                    {
                        txt_nomProveedor.Text = provinfo.prov_nombre.ToString();
                        txt_descripcion.Text = provinfo.prov_descripcion.ToString();

                        btn_Guardar.Visible = false;
                    }
                }
            }
        }

        private void guardar_modificar_datos(int id)
        {
            if (id == 0)
            {
                Guardar();
            }
            else
            {
                provinfo = Cn_Proveedor.obtenerProveedorxId(id);
                if (provinfo != null)
                {
                    modifcar(provinfo);
                }
            }
        }

        private void Guardar()
        {
            try
            {
                provinfo = new Tbl_Proveedor();
                provinfo.prov_nombre = txt_nomProveedor.Text;
                provinfo.prov_descripcion = txt_descripcion.Text;

                Cn_Proveedor.save(provinfo);
                string js1 = "alert('Datos Guardados Con Exito..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                Response.Redirect("~/Templates/Template_Admin/Views/Proveedor.aspx");
            }
            catch (Exception ex)
            {
                string js1 = "alert('Datos No Guardados.." + ex.Message + "')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
            }
        }

        private void modifcar(object catinfo)
        {
            try
            {
                provinfo.prov_nombre = txt_nomProveedor.Text;
                provinfo.prov_descripcion = txt_descripcion.Text;

                Cn_Proveedor.modify(provinfo);
                string js1 = "alert('Datos Modificados Con Exito..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                Response.Redirect("~/Templates/Template_Admin/Views/Proveedor.aspx");
            }
            catch (Exception ex)
            {
                string js1 = "alert('Datos No Modificados.." + ex.Message + "')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
            }
        }

        protected void btn_Guardar_Click(object sender, EventArgs e)
        {
            bool existe = Cn_Proveedor.autentificarxNom(txt_nomProveedor.Text);
            if (existe)
            {
                Tbl_Proveedor cat = new Tbl_Proveedor();
                cat = Cn_Proveedor.obtenerProveedorxNombre(txt_nomProveedor.Text);
                if (cat != null)
                {
                    string js1 = "alert('Categoria existente..')";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                }
            }
            else
            {
                guardar_modificar_datos(Convert.ToInt32(Request["cod"]));
            }
        }

        protected void btn_Modificar_Click(object sender, EventArgs e)
        {
            guardar_modificar_datos(Convert.ToInt32(Request["cod"]));
        }

        protected void btn_Cancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Templates/Template_Admin/Views/Proveedor.aspx");
        }       
        
    }
}