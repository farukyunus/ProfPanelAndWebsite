using HaberAdmin.Codes.Data;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HaberAdmin.W_HaberDetay
{
    public partial class HaberDetay : System.Web.UI.Page
    {
        public string Haber_Url = string.Empty;
        SqlConnection bgl;
        public List<HaberListe> Haber_Detay = new List<HaberListe>();
        public List<HaberListe> Liste_Haber_Detay = new List<HaberListe>();
        public bool Mobil = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Browser.IsMobileDevice)
            { 
                Mobil = true;
            }

            if (Request.QueryString["Haber_Url_1"] != null)
                Haber_Url = "/" + Request.QueryString["Haber_Url_1"] +"/" + Request.QueryString["Haber_Url_2"] + "/";

            if (!string.IsNullOrEmpty(Haber_Url))
            {

                bgl = new SqlConnection();
                bgl.ConnectionString = ConfigurationManager.ConnectionStrings["BglConfig"].ConnectionString.ToString();

                SqlCommand kmt = new SqlCommand();
                kmt.Connection = bgl;
                bgl.Open();
                kmt.CommandText = "W_SP_Haber_Detay_Getir";
                kmt.Parameters.AddWithValue("@HaberUrl", Haber_Url);
                kmt.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = kmt.ExecuteReader();
               
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {

                        HaberListe hd = new HaberListe
                        {
                            HaberBaslik = dr["HaberBaslik"].ToString(),
                            HaberID = Convert.ToInt32(dr["id"]),
                            AnasayfadaGorun = Convert.ToInt32(dr["AnasayfadaGorun"]),
                            EmbedVideo = dr["EmbedVideo"].ToString(),
                            Goruntulenme = Convert.ToInt32(dr["Goruntulenme"]),
                            HaberKonum = dr["HaberKonum"].ToString(),
                            HaberKutuResimUrl = dr["HaberKutuResimUrl"].ToString(),
                            HaberMansetResimUrl = dr["HaberMansetResimUrl"].ToString(),
                            HaberMetin = dr["HaberMetin"].ToString(),
                            HaberOzet = dr["HaberOzet"].ToString(),
                            HaberResimUrl = dr["HaberResimUrl"].ToString(),
                            HaberTarih = Convert.ToDateTime(dr["HaberTarih"]),
                            KategoriAdi = dr["KategoriAdi"].ToString(),
                            KategoriID = Convert.ToInt32(dr["KategoriID"]),
                            Kaydeden = dr["Kaydeden"].ToString(),
                            MansetBaslik = dr["MansetBaslik"].ToString(),
                            Haber_Url = dr["HaberUrl"].ToString(),
                            SeoHaberi = Convert.ToInt32(dr["SeoHaberi"])

                        };
                        Haber_Detay.Add(hd);
                    }
                }
                bgl.Close();



                if (Haber_Detay.Count < 1)
                {
                    Response.StatusCode = 404;
                    Response.Write("<h1>404</h1>");
                    Response.End();

                }

                SqlCommand kmtList = new SqlCommand();
                kmtList.Connection = bgl;
                bgl.Open();
                kmtList.CommandText = "W_SP_ListeHaber_HaberDetay";
                kmtList.Parameters.AddWithValue("@HaberID", Haber_Detay[0].HaberID);
                kmtList.CommandType = CommandType.StoredProcedure;
                SqlDataReader drList = kmtList.ExecuteReader();
                if (drList.HasRows)
                {
                    while (drList.Read())
                    {

                        HaberListe hd = new HaberListe
                        {
                            HaberBaslik = drList["HaberBaslik"].ToString(),
                            HaberID = Convert.ToInt32(drList["id"]),
                            AnasayfadaGorun = Convert.ToInt32(drList["AnasayfadaGorun"]),
                            EmbedVideo = drList["EmbedVideo"].ToString(),
                            Goruntulenme = Convert.ToInt32(drList["Goruntulenme"]),
                            HaberKonum = drList["HaberKonum"].ToString(),
                            HaberKutuResimUrl = drList["HaberKutuResimUrl"].ToString(),
                            HaberMansetResimUrl = drList["HaberMansetResimUrl"].ToString(),
                            HaberMetin = drList["HaberMetin"].ToString(),
                            HaberOzet = drList["HaberOzet"].ToString(),
                            HaberResimUrl = drList["HaberResimUrl"].ToString(),
                            HaberTarih = Convert.ToDateTime(drList["HaberTarih"]),
                            KategoriAdi = drList["KategoriAdi"].ToString(),
                            KategoriID = Convert.ToInt32(drList["KategoriID"]),
                            Kaydeden = drList["Kaydeden"].ToString(),
                            MansetBaslik = drList["MansetBaslik"].ToString(),
                            Haber_Url = drList["HaberUrl"].ToString(),
                            SeoHaberi = Convert.ToInt32(drList["SeoHaberi"])

                        };
                        Liste_Haber_Detay.Add(hd);
                    }
                }
                bgl.Close();
            }

            

        }
    }
}