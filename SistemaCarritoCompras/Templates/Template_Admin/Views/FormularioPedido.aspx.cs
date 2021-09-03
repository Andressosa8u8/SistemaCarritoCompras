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
    public partial class FormularioPedido : System.Web.UI.Page
    {
        private Tbl_Pedido pedinfo = new Tbl_Pedido();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request["cod"] != null)
                {
                    int codigo = Convert.ToInt32(Request["cod"]);
                    pedinfo = Cn_Pedido.obtenerPedidoxId(codigo);
                    btn_Modificar.Visible = true;

                    if (pedinfo != null)
                    {
                        txt_cantidad.Text = pedinfo.ped_cantidad.ToString();
                        txt_precio.Text = pedinfo.ped_precio.ToString();
                        txt_precio_total.Text = pedinfo.ped_precioTotal.ToString();
                        ddl_producto.Text = pedinfo.pro_id.ToString();
                        ddl_usuario.Text = pedinfo.usu_id.ToString();

                        btn_Guardar.Visible = false;
                    }
                }
                cargarProducto();
                cargarUsuario();
            }
        }

        private void cargarProducto()
        {
            List<Tbl_Producto> listaPro = new List<Tbl_Producto>();
            listaPro = Cn_Pedido.obtenerTipoProducto();
            listaPro.Insert(0, new Tbl_Producto() { pro_nombre = "Seleccione ........" });

            ddl_producto.DataSource = listaPro;
            ddl_producto.DataTextField = "pro_nombre";
            ddl_producto.DataValueField = "pro_id";
            ddl_producto.DataBind();
        }

        private void cargarUsuario()
        {
            List<Tbl_Usuario> listaUsu = new List<Tbl_Usuario>();
            listaUsu = Cn_Pedido.obtenerCedulaUsu();

            ddl_usuario.DataSource = listaUsu;
            ddl_usuario.DataTextField = "usu_cedula";
            ddl_usuario.DataValueField = "usu_id";
            ddl_usuario.DataBind();

            ddl_usuario.Items.Insert(0, new ListItem("Seleccione ........", "0"));        
        }

        private void guardar_modificar_datos(int id)
        {
            if (id == 0)
            {
                Guardar();
            }
            else
            {
                pedinfo = Cn_Pedido.obtenerPedidoxId(id);
                if (pedinfo != null)
                {
                    modifcar(pedinfo);
                }
            }
        }

        private void Guardar()
        {
            try
            {
                pedinfo = new Tbl_Pedido();
                pedinfo.ped_cantidad = Convert.ToInt32(txt_cantidad.Text);
                pedinfo.ped_precio = Convert.ToDouble(txt_precio.Text);
                pedinfo.ped_precioTotal = Convert.ToDouble(txt_precio_total.Text);
                pedinfo.pro_id = Convert.ToInt32(ddl_producto.Text);
                pedinfo.usu_id = Convert.ToInt32(ddl_usuario.Text);

                Cn_Pedido.save(pedinfo);
                string js1 = "alert('Datos Guardados Con Exito..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                Response.Redirect("~/Templates/Template_Admin/Views/Pedido.aspx");
            }
            catch (Exception ex)
            {
                string js1 = "alert('Datos No Guardados.." + ex.Message + "')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
            }
        }

        private void modifcar(object respinfo)
        {
            try
            {
                pedinfo.ped_cantidad = Convert.ToInt32(txt_cantidad.Text);
                pedinfo.ped_precio = Convert.ToDouble(txt_precio.Text);
                pedinfo.ped_precioTotal = Convert.ToDouble(txt_precio_total.Text);
                pedinfo.pro_id = Convert.ToInt32(ddl_producto.Text);
                pedinfo.usu_id = Convert.ToInt32(ddl_usuario.Text);

                Cn_Pedido.modify(pedinfo);
                string js1 = "alert('Datos Modificados Con Exito..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                Response.Redirect("~/Templates/Template_Admin/Views/Pedido.aspx");
            }
            catch (Exception ex)
            {
                string js1 = "alert('Datos No Modificados.." + ex.Message + "')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
            }
        }

        protected void btn_Guardar_Click(object sender, EventArgs e)
        {
            guardar_modificar_datos(Convert.ToInt32(Request["cod"]));
        }

        protected void btn_Modificar_Click(object sender, EventArgs e)
        {
            guardar_modificar_datos(Convert.ToInt32(Request["cod"]));
        }

        protected void btn_Cancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Templates/Template_Admin/Views/Pedido.aspx");
        }
    }
}