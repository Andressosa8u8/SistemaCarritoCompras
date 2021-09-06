using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class Cd_Pedidos
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();
        private SqlCommand cmdVentas = new SqlCommand();
        public string Insertar(Tbl_Pedido prod)
        {
            string rpta = "";
            try
            {
                cmdVentas.CommandType = CommandType.StoredProcedure;
                cmdVentas.CommandText = "pedidos";
                cmdVentas.Connection = conn.conectarBD();
                {
                    cmdVentas.Parameters.AddWithValue("@codigo", prod.Codigo);
                    cmdVentas.Parameters.AddWithValue("@fecha", prod.Fecha);
                    cmdVentas.Parameters.AddWithValue("@subtotal", prod.Subtotal);
                    cmdVentas.Parameters.AddWithValue("@igv", prod.Igv);
                    cmdVentas.Parameters.AddWithValue("@total", prod.Total);
                    cmdVentas.Parameters.AddWithValue("@cliente", prod.Cliente);
                }
                int registros;
                registros = cmdVentas.ExecuteNonQuery();
                if (registros == 1)
                {
                    rpta = "OK";
                }
                else
                {
                    rpta = "Error al Insertar";
                }
            }
            catch (Exception ex)
            {
                System.Console.Write(ex.Message);
            }
            return rpta;
        }
    }
}
