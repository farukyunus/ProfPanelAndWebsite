using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HaberAdmin.PanelGiris
{
    public partial class Giris : System.Web.UI.Page
    {
        SqlConnection bgl;
        public string vtKullanici_adi = string.Empty;
        
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btn_giris_Click(object sender, EventArgs e)
        {
            bgl = new SqlConnection();
            bgl.ConnectionString = ConfigurationManager.ConnectionStrings["BglConfig"].ConnectionString.ToString();

            if (string.IsNullOrEmpty(kullanici_adi.Value) || string.IsNullOrEmpty(sifre.Value))
            {
                Response.Redirect("/PanelGiris/Giris.aspx");
            }

            else
            {
                SqlCommand kmt = new SqlCommand();
                kmt.Connection = bgl;
                bgl.Open();
                kmt.CommandText = "SP_GirisKontrol";
                kmt.CommandType = CommandType.StoredProcedure;
                kmt.Parameters.AddWithValue("@kullanici_adi", kullanici_adi.Value);
                kmt.Parameters.AddWithValue("@sifre", sifre.Value);

                SqlDataReader dr = kmt.ExecuteReader();

                while (dr.Read())
                {
                    vtKullanici_adi = dr["kullanici_adi"].ToString();

                    HttpCookie ckoku = new HttpCookie("cookiekontrol");
                    ckoku["loginkullanici"] = vtKullanici_adi;
                    ckoku.Expires = DateTime.Now.AddHours(12);
                    Response.Cookies.Add(ckoku);
                    //http://www.btdersleri.com/ders/AspNet-Cookie-Kullan%C4%B1m%C4%B1
                }
                bgl.Close();

                if (!string.IsNullOrEmpty(vtKullanici_adi)) 
                {
                    Response.Redirect("/Haberler/Default.aspx");

                }
                else
                {
                    ltrl_error.Text =@"<div class='alert alert-danger mt-3' role='alert'>Hatalı kullanıcı adı / şifre</div>";
                    //Response.Redirect("/PanelGiris/Giris.aspx");
                }


            }
     

        }
    }
}