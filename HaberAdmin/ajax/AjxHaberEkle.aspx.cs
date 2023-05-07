using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Text.RegularExpressions;
using HaberAdmin.Codes;

namespace HaberAdmin.ajax
{
    public partial class AjxHaberEkle : System.Web.UI.Page
    {
        public string ArananID = string.Empty;
        public string HaberBaslik = string.Empty;
        public string HaberOzet = string.Empty;
        public string HaberMetin = string.Empty;
        public string HaberResim = string.Empty;
        public string MansetResim = string.Empty;
        public string MansetBaslik = string.Empty;
        public string EmbedVideo = string.Empty;
        public int EtkilenenKayit = 0;
        public string Guncel_Haber_ID = string.Empty;
        public string KategoriAdi = string.Empty;
        public string KategoriAdi_Url = string.Empty;
        public string Konum = string.Empty;
        public string Kaydeden = string.Empty;
        public string FarkliKaydet = string.Empty;
        SqlConnection bgl;

        

        protected void Page_Load(object sender, EventArgs e)
        {
            bgl = new SqlConnection();
            bgl.ConnectionString = ConfigurationManager.ConnectionStrings["BglConfig"].ConnectionString.ToString();

            if (Request.Cookies["cookiekontrol"] != null)
            {
                Kaydeden = Request.Cookies["cookiekontrol"]["loginkullanici"];
            }

            ArananID = Request.Form["idArama"];
            HaberAra();
            HaberBaslik = Request.Form["HaberBaslik"].Trim();
            HaberOzet = Request.Form["HaberOzet"];
            HaberMetin = ImageDuzenle(Request.Form["ctl00$ContentPlaceHolder1$CKEditorControl1"].ToString());
            EmbedVideo = Request.Form["video_embed"];
            EmbedVideo = IframeDuzenle(EmbedVideo);

            KategoriAdi = Request.Form["inputGroupSelectKategori"];
            KategoriAdi_Url = Codes.Helper.ToURL(KategoriAdi);
            Konum = Request.Form["inputGroupSelectKonum"];
            MansetBaslik = Request.Form["MansetBaslik"];

            //Response.Write(KategoriAdi + "-"+ Konum);
            //Response.End();
            FarkliKaydet = Request.Form["chkF_Kaydet"];
            HaberResim = Request.Files[0].FileName.ToString();
            MansetResim = Request.Files[1].FileName.ToString();
            Guncel_Haber_ID = Request.Form["rq_txt"].ToString();
            if (string.IsNullOrEmpty(Request.Form["rq_txt"].ToString()))
            {
                Guncel_Haber_ID = Request.Form["rq_ara_id"].ToString();
            }


            if (!string.IsNullOrEmpty(HaberResim) && (Request.Files[0].ContentType == "image/jpeg" || Request.Files[0].ContentType == "image/png"))
            {
                Request.Files[0].SaveAs(Server.MapPath("~/foto/haber-resimleri/") + HaberResim);
                HaberResim = "/foto/haber-resimleri/" + HaberResim + "";

            }

            if (!string.IsNullOrEmpty(MansetResim) && (Request.Files[1].ContentType == "image/jpeg" || Request.Files[1].ContentType == "image/png"))
            {
                Request.Files[1].SaveAs(Server.MapPath("~/foto/manset-resimleri/") + MansetResim);
                MansetResim = "/foto/manset-resimleri/" + MansetResim + "";

            }

            if (string.IsNullOrEmpty(FarkliKaydet))
            {
                HaberGuncelle();

            }

            SqlCommand kmt = new SqlCommand();
            kmt.Connection = bgl;
            bgl.Open();
            kmt.CommandText = "SP_YeniHaberEkle";
            kmt.CommandType = CommandType.StoredProcedure;
            kmt.Parameters.AddWithValue("@HaberBaslik", HaberBaslik.Trim());
            kmt.Parameters.AddWithValue("@HaberOzet", HaberOzet);
            kmt.Parameters.AddWithValue("@HaberMetin", HaberMetin);
            kmt.Parameters.AddWithValue("@EmbedVideo", EmbedVideo);
            kmt.Parameters.AddWithValue("@HaberKonum", Konum);
            kmt.Parameters.AddWithValue("@HaberKategori", KategoriAdi);
            kmt.Parameters.AddWithValue("@HaberResimUrl", HaberResim);
            kmt.Parameters.AddWithValue("@HaberMansetResimUrl", MansetResim);
            kmt.Parameters.AddWithValue("@MansetBaslik", MansetBaslik);
            kmt.Parameters.AddWithValue("@Kaydeden", Kaydeden);



            try
            {
                EtkilenenKayit = kmt.ExecuteNonQuery();
            }
            catch (Exception)
            {

                EtkilenenKayit = 0;
            }

            bgl.Close();

            if (EtkilenenKayit > 0)
            {

                SqlCommand kmtid = new SqlCommand();
                kmtid.Connection = bgl;
                bgl.Open();
                kmtid.CommandText = "SP_SonEklenenHaberiGetir";
                kmtid.CommandType = CommandType.StoredProcedure;
                SqlDataReader drid = kmtid.ExecuteReader();
                int id = 0;
                while (drid.Read())
                {
                    id = Convert.ToInt32(drid["id"]);
                }

                Response.Redirect("/Haberler/HaberEkle.aspx?msg=ok&Kaydedilen_ID=" + id + "");
            }

            else
            {
                Response.Redirect("/Haberler/HaberEkle.aspx?msg=error");
            }

        }


        public void HaberAra()
        {
            if (!string.IsNullOrEmpty(ArananID))
            {
                SqlCommand kmt_HaberVarmi = new SqlCommand();
                kmt_HaberVarmi.Connection = bgl;
                bgl.Open();
                kmt_HaberVarmi.CommandText = "SP_HaberAra";
                kmt_HaberVarmi.CommandType = CommandType.StoredProcedure;
                kmt_HaberVarmi.Parameters.AddWithValue("@ID", ArananID);
                SqlDataReader dr_HaberVarmi = kmt_HaberVarmi.ExecuteReader();
                if (dr_HaberVarmi.Read())
                {
                    Response.Redirect("/Haberler/HaberEkle.aspx?HaberAra=" + ArananID + "");
                }

                else
                {
                    Response.Redirect("/Haberler/HaberAraID.aspx?HaberAra=HaberBulunamadi");
                }
                bgl.Close();


            }

        }
        public void HaberGuncelle()
        {

            if (!string.IsNullOrEmpty(Guncel_Haber_ID))
            {

                SqlCommand kmt_HaberGuncelle = new SqlCommand();
                kmt_HaberGuncelle.Connection = bgl;
                bgl.Open();
                kmt_HaberGuncelle.CommandText = "SP_HaberGuncelle";
                kmt_HaberGuncelle.CommandType = CommandType.StoredProcedure;
                kmt_HaberGuncelle.Parameters.AddWithValue("@ID", Guncel_Haber_ID);
                kmt_HaberGuncelle.Parameters.AddWithValue("@HaberBaslik", HaberBaslik);
                kmt_HaberGuncelle.Parameters.AddWithValue("@HaberOzet", HaberOzet);
                kmt_HaberGuncelle.Parameters.AddWithValue("@HaberMetin", HaberMetin);
                kmt_HaberGuncelle.Parameters.AddWithValue("@EmbedVideo", EmbedVideo);
                kmt_HaberGuncelle.Parameters.AddWithValue("@HaberResimUrl", HaberResim);
                kmt_HaberGuncelle.Parameters.AddWithValue("@HaberMansetResimUrl", MansetResim);
                kmt_HaberGuncelle.Parameters.AddWithValue("@HaberKonum", Konum);
                kmt_HaberGuncelle.Parameters.AddWithValue("@HaberKategori", KategoriAdi);
                kmt_HaberGuncelle.Parameters.AddWithValue("@Kategori_Url", Helper.ToURL(KategoriAdi_Url));
                kmt_HaberGuncelle.Parameters.AddWithValue("@MansetBaslik", MansetBaslik);


                //SqlDataReader dr_HaberGuncelle = kmt_HaberGuncelle.ExecuteReader();
                int etkilenenkayit = kmt_HaberGuncelle.ExecuteNonQuery();
                if (etkilenenkayit > 0)
                {
                    Response.Redirect("/Haberler/HaberEkle.aspx?msg=HaberGuncellendi&Kaydedilen_ID=" + Guncel_Haber_ID + "");

                }

            }



        }

        public string IframeDuzenle(string txt)//Iframe içindeki width değerini replace etmek için yapıldı. 
        {

            if (!string.IsNullOrEmpty(txt))
            {
                MatchCollection ifrm = Regex.Matches(txt, "<iframe(.|\n)*?</iframe>");
                foreach (Match v in ifrm)
                {
                    Regex regex_src = new Regex("width=\".*?\"|width='.*?'");
                    Match match_src = regex_src.Match(v.ToString());
                    if (match_src.Success)
                    {
                       txt = txt.Replace(match_src.Value, "width=\"100%\"");
                    }
                }
            }

            return txt;

        }
        public string ImageDuzenle(string txt)//Image içindeki width değerini replace etmek için yapıldı. 
        {

            if (!string.IsNullOrEmpty(txt))
            {
                MatchCollection img = Regex.Matches(txt, "<img(.|\n)*?/>");
                foreach (Match v in img)
                {
                    Regex regex_src = new Regex("width=\".*?\"|width='.*?'");
                    Match match_src = regex_src.Match(v.ToString());
                    if (match_src.Success)
                    {
                        txt = txt.Replace(match_src.Value, "width=\"100%\"");
                    }
                }
            }

            return txt;

        }

    }
}