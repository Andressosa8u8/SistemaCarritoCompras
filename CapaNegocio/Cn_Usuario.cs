using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
    public class Cn_Usuario
    {
        //Instanciamos el dbml
        private static DataClasses1DataContext dc = new DataClasses1DataContext();

        //metodo para retornar todos los responsables
        public static List<Tbl_Usuario> obtenerUsuarios()
        {
            var lista = dc.Tbl_Usuario.Where(usu => usu.usu_estado == "A");
            return lista.ToList();
        }
        //metodo para verificar credenciales
        public static bool autentificar(string nombre, string pass)
        {
            var auto = dc.Tbl_Usuario.Any(usu => usu.usu_estado == "A" && usu.usu_nomlogin.Equals(nombre) && usu.usu_password.Equals(pass));
            return auto;
        }
        //metodo para verificar si existe el nombre
        public static bool autentificarxNomlogin(string nomlogin)
        {
            var auto = dc.Tbl_Usuario.Any(usu => usu.usu_estado == "A" && usu.usu_nomlogin == (nomlogin));
            return auto;
        }
        public static Tbl_Usuario obtenerUsuarioxId(int id)
        {
            var usuid = dc.Tbl_Usuario.FirstOrDefault(usu => usu.tusu_id.Equals(id) && usu.usu_estado == "A");
            return usuid;
        }
        public static Tbl_Usuario obtenerUsuarioxNombre(string nombres)
        {
            var usunom = dc.Tbl_Usuario.FirstOrDefault(usu => usu.usu_nombres.Equals(nombres) && usu.usu_estado == "A");
            return usunom;
        }
        //metodo para verificar si existe el correo
        public static bool autentificarxCorreo(string correo)
        {
            var auto = dc.Tbl_Usuario.Any(usu => usu.usu_estado == "A" && usu.usu_correo == (correo));
            return auto;
        }
        //metodo para traer el objeto
        public static Tbl_Usuario autentificarxLogin(string nomlogin, string pass)
        {
            var nlogin = dc.Tbl_Usuario.Single(usu => usu.usu_estado == "A" && usu.usu_nomlogin.Equals(nomlogin) && usu.usu_password.Equals(pass));
            return nlogin;
        }
        //metodo para obtener contraseña 
        public static Tbl_Usuario obtenercon(string correo)
        {
            var contra = dc.Tbl_Usuario.Single(usu => usu.usu_estado == "A" && usu.usu_correo.Equals(correo));
            return contra;
        }
        public static void save(Tbl_Usuario usu)
        {
            try
            {
                usu.usu_estado = "A";
                usu.tusu_id = 2;
                dc.Tbl_Usuario.InsertOnSubmit(usu);
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void modify(Tbl_Usuario usu)
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
        public static void delete(Tbl_Usuario usu)
        {
            try
            {
                usu.usu_estado = "I";
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
