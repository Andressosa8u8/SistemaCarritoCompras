using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
    public class Cn_TipoUsuario
    {
        //Instanciamos el dbml
        private static DataClasses1DataContext dc = new DataClasses1DataContext();

        //Metodos que nos sirven para traer toda la informacion
        public static List<Tbl_TipoUsuario> obtenerTusuarios()
        {
            var lista = dc.Tbl_TipoUsuario.Where(tusu => tusu.tusu_estado == "A");
            return lista.ToList();
        }

        public static Tbl_TipoUsuario obtenerTipoUsuarioxId(int id)
        {
            var tusuid = dc.Tbl_TipoUsuario.FirstOrDefault(tusu => tusu.tusu_id.Equals(id) && tusu.tusu_estado == "A");
            return tusuid;
        }

        public static void save(Tbl_TipoUsuario tusu)
        {
            try
            {
                tusu.tusu_estado = "A";
                dc.Tbl_TipoUsuario.InsertOnSubmit(tusu);
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void modify(Tbl_TipoUsuario tusu)
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
        public static void delete(Tbl_TipoUsuario tusu)
        {
            try
            {
                tusu.tusu_estado = "I";
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
