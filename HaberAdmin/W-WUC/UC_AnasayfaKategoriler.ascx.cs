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
using HaberAdmin.Codes;

namespace HaberAdmin.W_WUC
{
    public partial class UC_AnasayfaKategoriler : System.Web.UI.UserControl
    {
        SqlConnection bgl;
        public List<HaberListe> AKHListe = new List<HaberListe>();
        protected void Page_Load(object sender, EventArgs e)
        {
            bgl = new SqlConnection();
            bgl.ConnectionString = ConfigurationManager.ConnectionStrings["BglConfig"].ConnectionString.ToString();

            SqlCommand kmt = new SqlCommand();
            kmt.Connection = bgl;
            bgl.Open();
            kmt.CommandText = "W_SP_AnasayfaKategoriHaberleriGetir";
            kmt.Parameters.AddWithValue("KatUrl", "guncel");
            kmt.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = kmt.ExecuteReader();

            //Rptr_Mansetalti.DataSource = dr;
            //Rptr_Mansetalti.DataBind();

            
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    HaberListe AKH = new HaberListe//SQL kayıtları içinde dönerken listenin içini dolduruyorum, .add diyerek yine aynı tipteki listenin (AKHListe) içine ekliyorum kayıtları.
                    {
                        HaberBaslik = Helper.NullStrKontrol(dr["HaberBaslik"].ToString()),
                        HaberID =  Convert.ToInt32(dr["id"]),
                        AnasayfadaGorun = Convert.ToInt32(dr["AnasayfadaGorun"]),
                        EmbedVideo = Helper.NullStrKontrol(dr["EmbedVideo"].ToString()),
                        Goruntulenme = Convert.ToInt32(dr["Goruntulenme"]),
                        HaberKonum = Helper.NullStrKontrol(dr["HaberKonum"].ToString()),
                        HaberKutuResimUrl = Helper.NullStrKontrol(dr["HaberKutuResimUrl"].ToString()),
                        HaberMansetResimUrl = Helper.NullStrKontrol(dr["HaberMansetResimUrl"].ToString()),
                        HaberMetin = Helper.NullStrKontrol(dr["HaberMetin"].ToString()),
                        HaberOzet = Helper.NullStrKontrol(dr["HaberOzet"].ToString()),
                        HaberResimUrl = Helper.NullStrKontrol(dr["HaberResimUrl"].ToString()),
                        HaberTarih = Convert.ToDateTime(dr["HaberTarih"]),
                        KategoriAdi = Helper.NullStrKontrol(dr["KategoriAdi"].ToString()),
                        KategoriID = Convert.ToInt32(dr["KategoriID"]),
                        Kaydeden = Helper.NullStrKontrol(dr["Kaydeden"].ToString()),
                        MansetBaslik = Helper.NullStrKontrol(dr["MansetBaslik"].ToString()),
                        Haber_Url = dr["HaberUrl"].ToString(),
                        SeoHaberi = Convert.ToInt32(dr["SeoHaberi"])

                    };
                    AKHListe.Add(AKH);
                }
            }

            bgl.Close();




        }
    }
}