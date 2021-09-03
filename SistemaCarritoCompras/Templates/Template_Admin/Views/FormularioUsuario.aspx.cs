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
    public partial class FormularioUsuario : System.Web.UI.Page
    {

        private Tbl_Usuario usuinfo = new Tbl_Usuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request["cod"] != null)
                {
                    int codigo = Convert.ToInt32(Request["cod"]);
                    usuinfo = Cn_Usuario.obtenerUsuarioxId(codigo);
                    btn_Modificar.Visible = true;

                    if (usuinfo != null)
                    {
                        txt_nombres.Text = usuinfo.usu_nombres.ToString();
                        txt_apellidos.Text = usuinfo.usu_apellidos.ToString();
                        txt_cedula.Text = usuinfo.usu_cedula.ToString();
                        txt_usuario.Text = usuinfo.usu_nomlogin.ToString();
                        txt_pass.Text = usuinfo.usu_password.ToString();
                        txt_direccion.Text = usuinfo.usu_direccion.ToString();
                        txt_correo.Text = usuinfo.usu_correo.ToString();
                        txt_telefono.Text = usuinfo.usu_telefono.ToString();
                        ddl_tusu.Text = usuinfo.tusu_id.ToString();

                        btn_Guardar.Visible = false;
                    }
                }
                cargarTipoUsuario();
            }
        }

        private void cargarTipoUsuario()
        {
            List<Tbl_TipoUsuario> listaPro = new List<Tbl_TipoUsuario>();
            listaPro = Cn_Usuario.obtenerTipoUsuarios();
            listaPro.Insert(0, new Tbl_TipoUsuario() { tusu_nom = "Seleccione ........" });

            ddl_tusu.DataSource = listaPro;
            ddl_tusu.DataTextField = "tusu_nom";
            ddl_tusu.DataValueField = "tusu_id";
            ddl_tusu.DataBind();
        }

        private void guardar_modificar_datos(int id)
        {
            if (id == 0)
            {
                Guardar();
            }
            else
            {
                usuinfo = Cn_Usuario.obtenerUsuarioxId(id);
                if (usuinfo != null)
                {
                    modifcar(usuinfo);
                }
            }
        }

        private void Guardar()
        {
            try
            {
                usuinfo = new Tbl_Usuario();
                usuinfo.usu_nombres = txt_nombres.Text;
                usuinfo.usu_apellidos = txt_apellidos.Text;
                usuinfo.usu_cedula = Convert.ToInt32(txt_cedula.Text);
                usuinfo.usu_nomlogin = txt_usuario.Text;
                usuinfo.usu_password = txt_pass.Text;
                usuinfo.usu_direccion = txt_direccion.Text;
                usuinfo.usu_correo = txt_correo.Text;
                usuinfo.usu_telefono = Convert.ToInt32(txt_telefono.Text);
                usuinfo.tusu_id = Convert.ToInt32(ddl_tusu.Text);

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

        private void modifcar(Tbl_Usuario usuinfo)
        {
            try
            {
                usuinfo.usu_nombres = txt_nombres.Text;
                usuinfo.usu_apellidos = txt_apellidos.Text;
                usuinfo.usu_cedula = Convert.ToInt32(txt_cedula.Text);
                usuinfo.usu_nomlogin = txt_usuario.Text;
                usuinfo.usu_password = txt_pass.Text;
                usuinfo.usu_direccion = txt_direccion.Text;
                usuinfo.usu_correo = txt_correo.Text;
                usuinfo.usu_telefono = Convert.ToInt32(txt_telefono.Text);
                usuinfo.tusu_id = Convert.ToInt32(ddl_tusu.Text);

                Cn_Usuario.modify(usuinfo);
                string js1 = "alert('Datos Modificados Con Exito..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                Response.Redirect("~/Templates/Template_Admin/Views/Usuario.aspx");
            }
            catch (Exception ex)
            {
                string js1 = "alert('Datos No Modificados.." + ex.Message + "')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
            }
        }

        protected void btn_Guardar_Click(object sender, EventArgs e)
        {
            bool existe = Cn_Usuario.autentificarxCedula(Convert.ToInt32(txt_cedula.Text));
            if (existe)
            {
                Tbl_Usuario usu = new Tbl_Usuario();
                usu = Cn_Usuario.obtenerUsuarioxCedula(Convert.ToInt32(txt_cedula.Text));
                if (usu != null)
                {
                    string js1 = "alert('Usuario existente..')";
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
            Response.Redirect("~/Templates/Template_Admin/Views/Usuario.aspx");
        }
    }
}