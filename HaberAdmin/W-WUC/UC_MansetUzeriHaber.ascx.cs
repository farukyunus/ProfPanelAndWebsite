using HaberAdmin.Codes;
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

namespace HaberAdmin.W_WUC
{
    public partial class UC_MansetUzeriHaber : System.Web.UI.UserControl
    {
        SqlConnection bgl;
        public List<HaberListe> MansetUzeriList = new List<HaberListe>();
        public int habersira = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            bgl = new SqlConnection();
            bgl.ConnectionString = ConfigurationManager.ConnectionStrings["BglConfig"].ConnectionString.ToString();

            SqlCommand kmt = new SqlCommand();
            kmt.Connection = bgl;
            bgl.Open();
            kmt.CommandText = "W_SP_MansetUzeriHaberGetir";
            kmt.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = kmt.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    HaberListe mu = new HaberListe
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
                    MansetUzeriList.Add(mu);
                }
            }

            //Rptr_Mansetuzeri.DataSource = dr;
            //Rptr_Mansetuzeri.DataBind();
            bgl.Close();

        }
    }
}