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

    public partial class index1 : System.Web.UI.Page
    {

        private static int con = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
            Session["con"] = Session["Conantiguo"];
        }

        protected void btn_ingresar_Click(object sender, EventArgs e)
        {
            Ingresar();
        }

        private void Ingresar()
        {
            bool existenom = Cn_Usuario.autentificarxNomlogin(txt_usu.Text);
            bool existe = Cn_Usuario.autentificar(txt_usu.Text, txt_pass.Text);
            {
                if (existenom)
                {
                    if (existe)
                    {
                        Tbl_Usuario usu = new Tbl_Usuario();
                        usu = Cn_Usuario.autentificarxLogin(txt_usu.Text, txt_pass.Text);

                        int tusuario = Convert.ToInt32(usu.tusu_id);
                        if (tusuario == 1)
                        {
                            Session["Admin"] = usu.tusu_id.ToString();
                            Session["apellido"] = usu.usu_apellidos.ToString();
                            Session["nombre"] = usu.usu_nombres.ToString();
                            Response.Redirect("~/Templates/Template_Admin/Views/PrincipalAdmin.aspx");
                            Limpiar();
                        }
                        else if (tusuario == 2)
                        {
                            Session["Usuario"] = usu.tusu_id.ToString();
                            Session["nombre"] = usu.usu_nombres.ToString();
                            Session["usuId"] = usu.usu_nombres.ToString();
                            Session["email"] = usu.usu_correo.ToString();
                            Response.Redirect("~/Templates/Template_Principal/Views/Principal.aspx");
                            Limpiar();
                        }
                    }
                    else
                    {
                        string intentos = (con + (Convert.ToInt32(Session["con"]))).ToString();
                        Session["Conantiguo"] = intentos.ToString();
                        string js1 = "alert('Credenciales Incorrectas, Intentos: " + intentos + "')";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                        txt_pass.Text = "";
                        if (Convert.ToInt32(intentos) == 3)
                        {
                            string jsl1 = "alert('A superado el limite de intentos..')";
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", jsl1, true);
                            btn_ingresar.Visible = false;
                            Session.RemoveAll();
                        }
                    }
                }
                else
                {
                    string js1 = "alert('Usuario No existe..')";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                }
            }
        }

        private void Limpiar()
        {
            txt_usu.Text = txt_pass.Text = "";
        }

    }
}