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
    public partial class FormularioCategoria : System.Web.UI.Page
    {
        private Tbl_Categoria catinfo = new Tbl_Categoria();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["cod"] != null)
            {
                int codigo = Convert.ToInt32(Request["cod"]);
                catinfo = Cn_Categoria.obtenerCategoriaxId(codigo);
                btn_Modificar.Visible = true;

                if (catinfo != null)
                {
                    txt_nomCategoria.Text = catinfo.cat_nombre.ToString();
                    txt_estado.Text = catinfo.cat_estado.ToString();
                    btn_Guardar.Visible = false;
                }
            }
        }

        protected void btn_Modificar_Click(object sender, EventArgs e)
        {
            guardar_modificar_datos(Convert.ToInt32(Request["cod"]));
        }

        private void guardar_modificar_datos(int id)
        {
            if (id == 0)
            {
                Guardar();
            }
            else
            {
                catinfo = Cn_Categoria.obtenerCategoriaxId(id);
                if (catinfo != null)
                {
                    modifcar(catinfo);
                }
            }
        }        

        private void Guardar()
        {
            try
            {
                catinfo = new Tbl_Categoria();
                catinfo.cat_nombre = txt_nomCategoria.Text;
                catinfo.cat_estado = txt_estado.Text;

                Cn_Categoria.save(catinfo);
                string js1 = "alert('Datos Guardados Con Exito..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                Response.Redirect("~/Templates/Template_Admin/Views/Categoria.aspx");
            }
            catch (Exception ex)
            {
                string js1 = "alert('Datos No Guardados.." + ex.Message + "')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
            }
        }

        private void modifcar(Tbl_Categoria catinfo)
        {
            try
            {
                catinfo.cat_nombre = txt_nomCategoria.Text;
                catinfo.cat_estado = txt_estado.Text;

                Cn_Categoria.modify(catinfo);
                string js1 = "alert('Datos Modificados Con Exito..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                Response.Redirect("~/Templates/Template_Admin/Views/Categoria.aspx");
            }
            catch (Exception ex)
            {
                string js1 = "alert('Datos No Modificados.." + ex.Message + "')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
            }
        }

        protected void btn_Guardar_Click(object sender, EventArgs e)
        {
            bool existe = Cn_Categoria.autentificarxNom(txt_nomCategoria.Text);
            if (existe)
            {
                Tbl_Categoria cat = new Tbl_Categoria();
                cat = Cn_Categoria.obtenerCategoriaxNombre(txt_nomCategoria.Text);
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

        protected void btn_Cancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Templates/Template_Admin/Views/Categoria.aspx");
        }
    }
}