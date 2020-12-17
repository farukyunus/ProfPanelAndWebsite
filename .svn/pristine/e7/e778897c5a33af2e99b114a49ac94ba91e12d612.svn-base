using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HaberAdmin.ajax
{
    public partial class AjxHaberKaldir : System.Web.UI.Page
    {


        [System.Web.Services.WebMethod]
        public static string HaberKaldir(string id,string islem)
        {
            SqlConnection bgl;
            bgl = new SqlConnection();
            bgl.ConnectionString = ConfigurationManager.ConnectionStrings["BglConfig"].ConnectionString.ToString();

            SqlCommand kmt = new SqlCommand();
            kmt.Connection = bgl;
            bgl.Open();
            kmt.CommandText = "Sp_HaberKaldir";
            kmt.Parameters.AddWithValue("@ID", id);
            kmt.Parameters.AddWithValue("@Islem", islem);
            kmt.CommandType = CommandType.StoredProcedure;
            int etkilenenkayit = kmt.ExecuteNonQuery();
            bgl.Close();

            if (etkilenenkayit > 0)
            {
                return "Başarılı !" + id + "";
            }

            else
            {
                return "Hata !" + id + " Yayınan kaldırılırken sorun oluştu.";
            }


            
        }

    }

}
