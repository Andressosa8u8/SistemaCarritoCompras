using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
    public class Cn_Proveedor
    {
        //Instanciamos el dbml
        private static DataClasses1DataContext dc = new DataClasses1DataContext();

        //metodo para retornar todos las categorias
        public static List<Tbl_Proveedor> obtenerProveedores()
        {
            var lista = dc.Tbl_Proveedor.Where(prov => prov.prov_estado == "A" || prov.prov_estado == "C");
            return lista.ToList();
        }

        public static Tbl_Proveedor obtenerProveedorxId(int id)
        {
            var provid = dc.Tbl_Proveedor.FirstOrDefault(prov => prov.prov_id.Equals(id) && prov.prov_estado == "A");
            return provid;
        }

        public static bool autentificarxNom(string nombre)
        {
            var auto = dc.Tbl_Proveedor.Any(prov => prov.prov_estado == "A" && prov.prov_nombre == (nombre));
            return auto;
        }

        public static Tbl_Proveedor obtenerProveedorxNombre(string nombre)
        {
            var provnom = dc.Tbl_Proveedor.FirstOrDefault(prov => prov.prov_nombre.Equals(nombre) && prov.prov_estado == "A");
            return provnom;
        }

        public static void save(Tbl_Proveedor prov)
        {
            try
            {
                prov.prov_estado = "A";
                dc.Tbl_Proveedor.InsertOnSubmit(prov);
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void modify(Tbl_Proveedor prov)
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
        public static void delete(Tbl_Proveedor prov)
        {
            try
            {
                prov.prov_estado = "I";
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
