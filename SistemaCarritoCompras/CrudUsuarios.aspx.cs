using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaNegocio;

namespace SistemaCarritoCompras
{
    public partial class CrudUsuarios : System.Web.UI.Page
    {
        private Tbl_Usuario usuinfo = new Tbl_Usuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void btn_registrar_Click(object sender, EventArgs e)
        {
            try
            {
                usuinfo = new Tbl_Usuario();
                usuinfo.usu_nombres = txt_nom.Text;
                usuinfo.usu_apellidos = txt_ape.Text;
                usuinfo.usu_cedula = Convert.ToInt32(txt_ced.Text);
                usuinfo.usu_nomlogin = txt_usu.Text;
                usuinfo.usu_password = txt_pass.Text;
                usuinfo.usu_direccion = txt_dir.Text;
                usuinfo.usu_correo = txt_email.Text;
                usuinfo.usu_telefono = Convert.ToInt32(txt_tel.Text);

                Cn_Usuario.save(usuinfo);
                string js1 = "alert('Datos Guardados Con Exito..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                Response.Redirect("~/Templates/Template_Admin/Views/Usuario.aspx");
            }
            catch (Exception ex)
            {
                string js1 = "alert('Datos No Guardados.." + ex.Message + "')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
            }
        }

        protected void btn_cancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/index.aspx");
        }

        
    }
}