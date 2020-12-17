using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HaberAdmin
{
    public partial class Site : System.Web.UI.MasterPage
    {
        SqlConnection bgl;

        public string LoginKullanici = string.Empty;
        public string KullaniciResim = string.Empty;
        public string AdSoyad = string.Empty;
        public string Yetkisi = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

            bgl = new SqlConnection();
            bgl.ConnectionString = ConfigurationManager.ConnectionStrings["BglConfig"].ConnectionString.ToString();

            if (Request.Cookies["cookiekontrol"] != null)
            {
                LoginKullanici = Request.Cookies["cookiekontrol"]["loginkullanici"];
                bgl.Open();
                SqlCommand kmt = new SqlCommand("select kullanici_resim,kullanici_adi,ad_soyad,yetki_alani from tblKullanicilar where kullanici_adi = @Kullanici_adi", bgl);
                kmt.Parameters.AddWithValue("@Kullanici_adi", LoginKullanici);
                SqlDataReader dr = kmt.ExecuteReader();
                while (dr.Read())
                {
                    KullaniciResim = !string.IsNullOrEmpty(dr["kullanici_resim"].ToString()) ? dr["kullanici_resim"].ToString() : "/foto/editor-resimleri/user.png";
                    AdSoyad = dr["ad_soyad"].ToString();
                    Yetkisi = dr["yetki_alani"].ToString();
                }

                bgl.Close();

            }

            if (string.IsNullOrEmpty(LoginKullanici))
            {
                Response.Redirect("/PanelGiris/Giris.aspx");
            }
        }
    }
}