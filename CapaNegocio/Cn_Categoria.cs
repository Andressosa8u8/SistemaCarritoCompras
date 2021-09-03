using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
    public class Cn_Categoria
    {
        //Instanciamos el dbml
        private static DataClasses1DataContext dc = new DataClasses1DataContext();

        //metodo para retornar todos los responsables
        public static List<Tbl_Categoria> obtenerCategorias()
        {
            var lista = dc.Tbl_Categoria.Where(cat => cat.cat_estado == "A" || cat.cat_estado == "C");
            return lista.ToList();
        }

        public static Tbl_Categoria obtenerCategoriaxId(int id)
        {
            var catid = dc.Tbl_Categoria.FirstOrDefault(cat => cat.cat_id.Equals(id) && cat.cat_estado == "A" || cat.cat_estado == "C");
            return catid;
        }

        public static bool autentificarxNom(string nombre)
        {
            var auto = dc.Tbl_Categoria.Any(cat => cat.cat_estado == "A" && cat.cat_nombre == (nombre));
            return auto;
        }

        public static Tbl_Categoria obtenerCategoriaxNombre(string nombre)
        {
            var catnom = dc.Tbl_Categoria.FirstOrDefault(cat => cat.cat_nombre.Equals(nombre) && cat.cat_estado == "A");
            return catnom;
        }

        public static void save(Tbl_Categoria cat)
        {
            try
            {
                cat.cat_estado = "A";
                dc.Tbl_Categoria.InsertOnSubmit(cat);
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void modify(Tbl_Categoria cat)
        {
            try
            {
                cat.cat_estado = "C";
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static void delete(Tbl_Categoria cat)
        {
            try
            {
                cat.cat_estado = "I";
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
