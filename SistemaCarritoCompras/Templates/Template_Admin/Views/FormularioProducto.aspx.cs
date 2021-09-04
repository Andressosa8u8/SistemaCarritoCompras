using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaNegocio;

namespace SistemaCarritoCompras.Templates.Template_Admin.Views
{
    public partial class FormularioProducto : System.Web.UI.Page
    {
        private Tbl_Producto proinfo = new Tbl_Producto();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request["cod"] != null)
                {
                    int codigo = Convert.ToInt32(Request["cod"]);
                    proinfo = Cn_Producto.obtenerProductoxId(codigo);
                    btn_Modificar.Visible = true;

                    if (proinfo != null)
                    {
                        txt_nomProducto.Text = proinfo.pro_nombre.ToString();
                        txt_preProducto.Text = proinfo.pro_precio.ToString();
                        txt_descripcion.Text = proinfo.pro_descripcion.ToString();
                        Image1.ImageUrl = "~/Templates/Images/" + FU_imagen.FileName;
                        ddl_categoria.Text = proinfo.cat_id.ToString();
                        ddl_proveedor.Text = proinfo.prov_id.ToString();

                        btn_Guardar.Visible = false;
                    }
                }
                cargarCategoria();
                cargarProveedor();
            }
        }

        private void cargarCategoria()
        {
            List<Tbl_Categoria> listaCat = new List<Tbl_Categoria>();
            listaCat = Cn_Categoria.obtenerCategorias();
            listaCat.Insert(0, new Tbl_Categoria() { cat_nombre = "Seleccione ........" });

            ddl_categoria.DataSource = listaCat;
            ddl_categoria.DataTextField = "cat_nombre";
            ddl_categoria.DataValueField = "cat_id";
            ddl_categoria.DataBind();
        }

        private void cargarProveedor()
        {
            List<Tbl_Proveedor> listaProv = new List<Tbl_Proveedor>();
            listaProv = Cn_Producto.obtenerTipoProveedor();
            listaProv.Insert(0, new Tbl_Proveedor() { prov_nombre = "Seleccione ........" });

            ddl_proveedor.DataSource = listaProv;
            ddl_proveedor.DataTextField = "prov_nombre";
            ddl_proveedor.DataValueField = "prov_id";
            ddl_proveedor.DataBind();
        }

        private void guardar_modificar_datos(int id)
        {
            if (id == 0)
            {
                Guardar();
            }
            else
            {
                proinfo = Cn_Producto.obtenerProductoxId(id);
                if (proinfo != null)
                {
                    modifcar(proinfo);
                }
            }
        }

        private void Guardar()
        {
            //if (FU_imagen.HasFile)
            //{
            //    Stream fs = FU_imagen.PostedFile.InputStream;
            //    BinaryReader br = new System.IO.BinaryReader(fs);
            //    Byte[] bytes = br.ReadBytes((Int32)fs.Length);
            //    string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
            //    var Foto = System.Convert.FromBase64String(base64String.ToString());
            //}
            //else
            //{
            //    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Seleccionar un Archivo....!!')", true);
            //}

            try
            {
                proinfo = new Tbl_Producto();
                proinfo.pro_nombre = txt_nomProducto.Text;
                proinfo.pro_precio = Convert.ToDouble(txt_preProducto.Text);
                proinfo.pro_descripcion = txt_descripcion.Text;
                if (!string.IsNullOrEmpty(FU_imagen.FileName))
                {
                    FU_imagen.SaveAs(Server.MapPath("/Templates/Images/") + FU_imagen.FileName);
                }
                proinfo.pro_imagen = FU_imagen.FileName;
                proinfo.cat_id = Convert.ToInt32(ddl_categoria.Text);
                proinfo.prov_id = Convert.ToInt32(ddl_proveedor.Text);

                Cn_Producto.save(proinfo);
                string js1 = "alert('Datos Guardados Con Exito..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                Response.Redirect("~/Templates/Template_Admin/Views/Producto.aspx");
            }
            catch (Exception ex)
            {
                string js1 = "alert('Datos No Guardados.." + ex.Message + "')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
            }
        }

        private void modifcar(Tbl_Producto proinfo)
        {
            try
            {
                proinfo = new Tbl_Producto();
                proinfo.pro_nombre = txt_nomProducto.Text;
                proinfo.pro_precio = Convert.ToDouble(txt_preProducto.Text);
                proinfo.pro_descripcion = txt_descripcion.Text;
                if (!string.IsNullOrEmpty(FU_imagen.FileName))
                {
                    FU_imagen.SaveAs(Server.MapPath("/Templates/Images/") + FU_imagen.FileName);
                }
                proinfo.pro_imagen = FU_imagen.FileName;
                proinfo.cat_id = Convert.ToInt32(ddl_categoria.Text);
                proinfo.prov_id = Convert.ToInt32(ddl_proveedor.Text);

                Cn_Producto.save(proinfo);
                string js1 = "alert('Datos Guardados Con Exito..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                Response.Redirect("~/Templates/Template_Admin/Views/Producto.aspx");
            }
            catch (Exception ex)
            {
                string js1 = "alert('Datos No Modificados.." + ex.Message + "')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
            }
        }

        protected void btn_Guardar_Click(object sender, EventArgs e)
        {
            bool existe = Cn_Producto.autentificarxNom(txt_nomProducto.Text);
            if (existe)
            {
                Tbl_Producto pro = new Tbl_Producto();
                pro = Cn_Producto.obtenerProductoxNombre(txt_nomProducto.Text);
                if (pro != null)
                {
                    string js1 = "alert('Producto existente..')";
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
            Response.Redirect("~/Templates/Template_Admin/Views/Producto.aspx");
        }
    }
}