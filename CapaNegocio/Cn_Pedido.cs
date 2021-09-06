using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
    public class Cn_Pedido
    {
        //Instanciamos el dbml
        private static DataClasses1DataContext dc = new DataClasses1DataContext();

        //metodo traer para pedidos
        public static List<Tbl_Pedido> obtenerPedido()
        {
            var lista = dc.Tbl_Pedido.Where(ped => ped.ped_estado == "A");
            return lista.ToList();
        }

        //metodo traer para tipo de producto
        public static List<Tbl_Producto> obtenerTipoProducto()
        {
            var lista = dc.Tbl_Producto.Where(pro => pro.pro_estado == "A");
            return lista.ToList();
        }

        //metodo traer para cedula usuario
        public static List<Tbl_Usuario> obtenerCedulaUsu()
        {
            var lista = dc.Tbl_Usuario.Where(usu => usu.usu_estado == "A");
            return lista.ToList();
        }

        ////metodo para verificar si existe el producto
        //public static bool autentificarxProducto(string nombre)
        //{
        //    var auto = dc.Tbl_Producto.Any(pro => pro.pro_estado == "A" && pro.pro_nombre == (nombre));
        //    return auto;
        //}

        ////metodo para verificar si existe la cedula usuario
        //public static bool autentificarxCedula(int cedula)
        //{
        //    var auto = dc.Tbl_Usuario.Any(usu => usu.usu_estado == "A" && usu.usu_cedula == (cedula));
        //    return auto;
        //}

        public static Tbl_Pedido obtenerPedidoxId(int id)
        {
            var pedid = dc.Tbl_Pedido.FirstOrDefault(ped => ped.ped_id.Equals(id) && ped.ped_estado == "A");
            return pedid;
        }

        public static void save(Tbl_Pedido ped)
        {
            try
            {
                ped.ped_estado = "A";
                ped.ped_fecha = DateTime.Now;
                dc.Tbl_Pedido.InsertOnSubmit(ped);
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void modify(Tbl_Pedido ped)
        {
            try
            {
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static void delete(Tbl_Pedido ped)
        {
            try
            {
                ped.ped_estado = "I";
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
