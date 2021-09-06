﻿using CapaDatos;
using CapaNegocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaCarritoCompras.Templates.Template_Principal.Views
{
    public partial class Menu1 : System.Web.UI.Page
    {
        DataTable dtb;
        DataTable carrito = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Usuario"] != null)
                {
                    string usulogeado = Session["Usuario"].ToString();
                }
                else
                {
                    Response.Redirect("../../../index.aspx");
                }

                cargarDetalle();
            }
        }

        private void cargarDetalle()
        {
            if (Session["pedido"] == null)
            {
                dtb = new DataTable("Carrito");
                dtb.Columns.Add("pro_nombre", System.Type.GetType("System.String"));
                dtb.Columns.Add("pro_precio", System.Type.GetType("System.Double"));
                dtb.Columns.Add("subtotal", System.Type.GetType("System.Double"));


                Session["pedido"] = dtb;
                Session["prueba"] = dtb;
            }
            else
            {
                Session["pedido"] = Session["prueba"];
            }

        }

        public void AgregarItem(string nom, double precio)
        {
            double total;
            int cantidad = 1;
            total = precio * cantidad;
            carrito = (DataTable)Session["pedido"];
            DataRow fila = carrito.NewRow();
            fila[0] = nom;
            fila[1] = precio;
            fila[2] = (int)cantidad;
            fila[3] = total;
            carrito.Rows.Add(fila);
            Session["pedido"] = carrito;
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            string nom = null;
            double precio = 0;
            if (e.CommandName == "Seleccionar")
            {
                DataList1.SelectedIndex = e.Item.ItemIndex;

                nom = ((Label)this.DataList1.SelectedItem.FindControl("lbn_nombre")).Text;                
                precio = double.Parse(((Label)this.DataList1.SelectedItem.FindControl("lbn_precio")).Text);
                AgregarItem(nom, precio);



                string js1 = "alert('Producto Agregado Con Exito..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                //Session["prueba"] = "Sesión usuario prueba";
            }
        }

        protected void lnbCerrarSession_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("../../../index.aspx");
        }



    }
}