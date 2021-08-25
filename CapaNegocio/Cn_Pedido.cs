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

        //metodo para retornar todos los pedidos
        public static List<Tbl_Pedido> obtenerPedidos()
        {
            var lista = dc.Tbl_Pedido.Where(ped => ped.ped_estado == "A");
            return lista.ToList();
        }

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
