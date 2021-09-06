using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
    public class Cn_Producto
    {
        //Instanciamos el dbml
        private static DataClasses1DataContext dc = new DataClasses1DataContext();

        //metodo para retornar todos las categorias
        public static List<Tbl_Producto> obtenerProductos()
        {
            var lista = dc.Tbl_Producto.Where(pro => pro.pro_estado == "A");
            return lista.ToList();
        }

        //metodo traer para tipo de categoria
        public static List<Tbl_Categoria> obtenerTipoCategoria()
        {
            var lista = dc.Tbl_Categoria.Where(cat => cat.cat_estado == "A");
            return lista.ToList();
        }

        //metodo traer para tipo de proveedor
        public static List<Tbl_Proveedor> obtenerTipoProveedor()
        {
            var lista = dc.Tbl_Proveedor.Where(prov => prov.prov_estado == "A");
            return lista.ToList();
        }

        public static Tbl_Producto obtenerProductoxId(int id)
        {
            var proid = dc.Tbl_Producto.FirstOrDefault(pro => pro.pro_id.Equals(id) && pro.pro_estado == "A");
            return proid;
        }

        public static Tbl_Producto obtenerProductoxNombre(string nombre)
        {
            var pronom = dc.Tbl_Producto.FirstOrDefault(pro => pro.pro_nombre.Equals(nombre) && pro.pro_estado == "A");
            return pronom;
        }

        public static bool autentificarxNom(string nombre)
        {
            var auto = dc.Tbl_Producto.Any(pro => pro.pro_estado == "A" && pro.pro_nombre == (nombre));
            return auto;
        }

        public static void save(Tbl_Producto pro)
        {
            try
            {
                pro.pro_estado = "A";
                dc.Tbl_Producto.InsertOnSubmit(pro);
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void modify(Tbl_Producto pro)
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
        public static void delete(Tbl_Producto pro)
        {
            try
            {
                pro.pro_estado = "I";
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
