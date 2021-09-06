using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaNegocio;

namespace SistemaCarritoCompras.Templates.Template_Principal.Views
{
    public partial class Detalle : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Usuario"] != null)
                {
                    string usulogeado = Session["Usuario"].ToString();
                    string usuId = Session["usuId"].ToString();
                    string nombre = Session["nombre"].ToString();
                    string email = Session["email"].ToString();
                    lblCliente.Text = nombre;
                    lblEmail.Text = email;
                }
                else
                {
                    Response.Redirect("../../../index.aspx");
                }

            }
        }

        protected void lnbCerrarSession_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("../../../index.aspx");
        }

        protected void lbn_carrito_Click(object sender, EventArgs e)
        {

        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            int i;
            double total = 0, prec, subtotal = 0, igv;
            string cod, nom;
            int cant;

            var items = (DataTable)Session["pedido"];
            //DataRow fila = items.NewRow();
            for (i = 0; i < grvDetalle.Rows.Count; i++)
            {
                cod = (grvDetalle.Rows[i].Cells[1].Text);
                nom = (grvDetalle.Rows[i].Cells[2].Text);
                prec = System.Convert.ToDouble(grvDetalle.Rows[i].Cells[3].Text);
                cant = System.Convert.ToInt16(((TextBox)this.grvDetalle.Rows[i].Cells[4].FindControl("txtCantidad")).Text);
                double prec1 = System.Convert.ToDouble(prec);
                subtotal = cant * prec1;
                grvDetalle.Rows[i].Cells[5].Text = subtotal.ToString();
                foreach (DataRow dr in items.Rows)
                {
                    if (dr["pro_id"].ToString() == cod.ToString())
                    {
                        dr["canproducto"] = cant;
                        dr["subtotal"] = subtotal;
                    }
                }

                total = total + subtotal;
            }

            igv = total * 0.18;
            subtotal = total - igv;

            lblIGV.Text = igv.ToString("0.00");
            lblSubTotal.Text = subtotal.ToString("0.00");
            lblTotal.Text = total.ToString("0.00");
        }

        protected void btnContinuar_Click(object sender, EventArgs e)
        {

        }

        protected void btnCompra_Click(object sender, EventArgs e)
        {
            oMatriculaCE.Codigo = txtCodigo.Text;
            oMatriculaCE.Fecha = lblFecha.Text;
            oMatriculaCE.Subtotal = decimal.Parse(lblSubTotal.Text);
            oMatriculaCE.Igv = decimal.Parse(lblIGV.Text);
            oMatriculaCE.Total = decimal.Parse(lblTotal.Text);
            oMatriculaCE.Cliente = lblCliente.Text;
            oMatriculaCN.Insertar(oMatriculaCE);

            foreach (GridViewRow row in grvDetalle.Rows)
            {
                ComponenteNegocio.DetalleVentaCN oMatriculaCNN = new ComponenteNegocio.DetalleVentaCN();
                ComponenteEntidad.DetalleVenta oMatriculaCEE = new ComponenteEntidad.DetalleVenta();
                oMatriculaCEE.Codigo = txtCodigo.Text;
                oMatriculaCEE.Cantidad = int.Parse(((TextBox)row.Cells[4].FindControl("txtCantidad")).Text);
                oMatriculaCEE.Precio = decimal.Parse(Convert.ToString(row.Cells[3].Text));
                oMatriculaCEE.Subtotal = decimal.Parse(Convert.ToString(row.Cells[5].Text));
                oMatriculaCEE.Codproducto = Convert.ToString(row.Cells[1].Text);
                oMatriculaCNN.Insertar(oMatriculaCEE);
            }
            SendEmail(sender, e);
            this.Response.Write("<script language='JavaScript'>window.alert('PROCESO TERMINADO CORRECTAMENTE')</script>");
            Response.Redirect("Carrito_Compra.aspx");
        }

        protected void grvDetalle_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Borrar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                DataTable ocar = new DataTable();
                ocar = (DataTable)Session["pedido"];
                ocar.Rows[index].Delete();
                lblTotal.Text = TotalCarrito(ocar).ToString();
                grvDetalle.DataSource = ocar;
                grvDetalle.DataBind();
                cargarcarrito();
            }
        }

        private void cargarcarrito()
        {
            grvDetalle.DataSource = Session["pedido"];
            grvDetalle.DataBind();
            btnActualizar_Click(btnActualizar, null);
        }

        protected void grvDetalle_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = e.RowIndex;
            DataTable dt1 = new DataTable();
            dt1 = (DataTable)Session["pedido"];
            dt1.Rows[index].Delete();

            lblTotal.Text = TotalCarrito(dt1).ToString();
            grvDetalle.DataSource = dt1;
            grvDetalle.DataBind();
            Session["pedido"] = dt1;
            btnActualizar_Click(btnActualizar, null);
        }

        public double TotalCarrito(DataTable dt)
        {
            double tot = 0;
            foreach (DataRow item in dt.Rows)
            {
                tot += Convert.ToDouble(item[4]);
            }
            return tot;
        }

        private void Pedidos(int cantidad,Decimal precio,Decimal total, string fecha, string codproducto, string cliente,char estado)
        {
            var query = dc.Pedidos(cantidad,precio,total,fecha,codproducto,cliente,estado);
        }
        protected void SendEmail(object sender, EventArgs e)
        {
            System.Net.Mail.MailMessage correo = new System.Net.Mail.MailMessage();
            correo.From = new System.Net.Mail.MailAddress("anderlion");
            correo.To.Add(this.lblEmail.Text);
            correo.Subject = "Pedido de Compra";

            string cod, des;
            int cant;
            var items = (DataTable)Session["pedido"];
            decimal total, prec, subtotal, igv;
            des = "";
            for (int i = 0; i < grvDetalle.Rows.Count; i++)
            {
                cod = (grvDetalle.Rows[i].Cells[1].Text);
                //\
                cant = System.Convert.ToInt16(((TextBox)this.grvDetalle.Rows[i].Cells[0].FindControl("TextBox1")).Text);
                prec = Decimal.Parse(grvDetalle.Rows[i].Cells[3].Text);
                des += "\r\n" + (grvDetalle.Rows[i].Cells[2].Text) + " " + "(" + cant + ")" + " " + Convert.ToString(prec) + "\r\n";
                //Actualiza la canasta

                foreach (DataRow objDR in items.Rows)
                {
                    if (objDR["codproducto"].ToString() == cod)
                    {
                        break;
                    }
                }

            }

            correo.Body = "Hola " + lblCliente.Text + " Usted ha realizado un pedido por la cantidad de : S/. " + lblTotal.Text + "\r\n" + des;

            correo.IsBodyHtml = false;
            correo.Priority = System.Net.Mail.MailPriority.Normal;
            System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient();
            //smtp.Host = "smtp.gmail.com";  //'para gmail
            smtp.Host = "smtp.live.com"; //para hotmail
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("tu correo", "y clave");
            smtp.EnableSsl = true;
            try
            {
                smtp.Send(correo);
                this.Response.Write("<script language='JavaScript'>window.alert('Venta Enviada Correctamente')</script>");
            }
            catch (Exception ex)
            {
                throw new Exception("Error: (" + ex.Message + ")");
            }


        }
    }
}