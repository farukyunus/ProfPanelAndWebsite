using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HaberAdmin.Haberler
{
    public partial class HaberEkle : System.Web.UI.Page
    {
        public string message = string.Empty;
        public string type = string.Empty;
        public string vtHaberMetin = string.Empty;
        public string vtHaberBaslik = string.Empty;
        public string vtHaberOzet = string.Empty;
        public string vtEmbedVideo = string.Empty;
        public string vtKategoriAdi = string.Empty;
        public string vtKonum = string.Empty;
        public string vtHaberResim = string.Empty;
        public string vtMansetResim = string.Empty;
        public string vtMansetBaslik = string.Empty;
        public int vtAktifKontrol;
        public string SelectedKonum = "anamanset";
        public string SelectedKategori = "Güncel";
        public int vtHaberID = 0;
        public bool BasariliBaglanti = true;
        public string ArananID = string.Empty;
        public string msg = "";
        public string h1 = "Haber Ekle";

        SqlConnection bgl;


        protected void Page_Load(object sender, EventArgs e)
        {
            bgl = new SqlConnection();
            bgl.ConnectionString = ConfigurationManager.ConnectionStrings["BglConfig"].ConnectionString.ToString();
            //if (Request.QueryString["HaberAra"]  != null && !string.IsNullOrEmpty(Request.QueryString["HaberAra"].ToString()))
            //{

            //    GuncelID.InnerText = Request.QueryString["HaberAra"].ToString();
            //}

            CKEditorControl1.config.entities = false;
            CKEditorControl1.config.basicEntities = false;
            CKEditorControl1.config.entities_greek = false;
            CKEditorControl1.config.entities_latin = false;
            CKEditorControl1.config.htmlEncodeOutput = false;
            CKEditorControl1.config.extraPlugins = "uploadimage";
            CKEditorControl1.config.filebrowserUploadUrl = "base64";
            CKEditorControl1.config.filebrowserImageBrowseUrl = "base64";
            CKEditorControl1.config.filebrowserImageUploadUrl = "base64";
            CKEditorControl1.config.filebrowserImageBrowseLinkUrl = "base64";



            //if (Request.QueryString["Kaydedilen_ID"] != null && !string.IsNullOrEmpty(Request.QueryString["Kaydedilen_ID"].ToString())) HaberGuncellendi();
            if (Request.QueryString["msg"] != null && !string.IsNullOrEmpty(Request.QueryString["msg"].ToString()))
            {




                if (!string.IsNullOrEmpty(Request.QueryString["msg"].ToString()))
                {
                    msg = Request.QueryString["msg"].ToString();

                    if (msg == "HaberGuncellendi")

                    {
                        h1 = "Haber Düzenle";
                        HaberGuncellendi();

                    }

                    else
                    {

                        SqlCommand kmt = new SqlCommand();
                        kmt.Connection = bgl;
                        bgl.Open();
                        kmt.CommandText = "SP_SonEklenenHaberiGetir";
                        kmt.CommandType = CommandType.StoredProcedure;

                        try
                        {
                            SqlDataReader dr = kmt.ExecuteReader();

                            while (dr.Read())
                            {
                                //.Replace("\r", "").Replace("\n", "").Replace("\"", "\\\"");
                                vtHaberID = Convert.ToInt32(dr["id"]);
                                vtHaberBaslik = dr["HaberBaslik"].ToString();
                                vtHaberOzet = dr["HaberOzet"].ToString();
                                vtHaberMetin = dr["HaberMetin"].ToString();
                                vtEmbedVideo = dr["EmbedVideo"].ToString();
                                vtKonum = dr["HaberKonum"].ToString().Trim();
                                vtKategoriAdi = dr["KategoriAdi"].ToString().Trim();
                                vtHaberResim = dr["HaberResimUrl"].ToString();
                                vtMansetResim = dr["HaberMansetResimUrl"].ToString();
                                vtMansetBaslik = dr["MansetBaslik"].ToString();

                            }
                           

                            CKEditorControl1.Text = vtHaberMetin;

                            

                        }
                        catch (Exception)
                        {
                            BasariliBaglanti = false;
                        }
                        bgl.Close();
                    }


                }

                if (BasariliBaglanti == false)
                {
                    message = "Başarısız! Veritabanı bağlantısı kurulamadı.";
                    type = "uyari";
                }

                else if (msg == "ok")
                {
                    message = "<b>Başarılı : </b> " + vtHaberBaslik + "" + " <b>ID</b> : " +vtHaberID;
                    type = "uyari-ok";
                }

                else if (msg == "HaberGuncellendi")
                {
                    message = "Haber Güncellendi.";
                    type = "uyari-ok";
                }

                else if (msg == "error")
                {
                    message = "Başarısız! Haber kaydedilirken bir hata oluştu.";
                    type = "uyari";
                }



                //else if (msg == "metinbos")
                //{
                //    message = "Haberin metin alanı boş olarak kaydedildi. İçerik girmelisiniz. ";
                //    type = "warning";
                //}
            }
            else if (Request.QueryString["HaberAra"] != null && !string.IsNullOrEmpty(Request.QueryString["HaberAra"].ToString())) HaberAra();

            if (!string.IsNullOrEmpty(vtKonum))
                SelectedKonum = vtKonum;
            if (!string.IsNullOrEmpty(vtKategoriAdi))
                SelectedKategori = vtKategoriAdi;

            //Response.Write(SelectedKonum + "*" + SelectedKategori);
            //Response.End();

        }

        public void HaberAra()
        {

            if (Request.QueryString["HaberAra"] != null && !string.IsNullOrEmpty(Request.QueryString["HaberAra"].ToString()))
            {
                ArananID = HttpContext.Current.Request.QueryString["HaberAra"].ToString();

                SqlCommand kmt_HbrAra = new SqlCommand();
                kmt_HbrAra.Connection = bgl;
                bgl.Open();
                kmt_HbrAra.CommandText = "SP_HaberAra";
                kmt_HbrAra.CommandType = CommandType.StoredProcedure;
                kmt_HbrAra.Parameters.AddWithValue("@ID", ArananID);


                SqlDataReader drAra = kmt_HbrAra.ExecuteReader();

                while (drAra.Read())
                {
                    vtHaberID = Convert.ToInt32(drAra["id"]);
                    vtHaberBaslik = drAra["HaberBaslik"].ToString().Replace("\r", "").Replace("\n", "").Replace("\"", "\\\"");
                    vtHaberOzet = drAra["HaberOzet"].ToString().Replace("\r", "").Replace("\n", "").Replace("\"", "\\\"");
                    vtHaberMetin = drAra["HaberMetin"].ToString().Replace("\r", "").Replace("\n", "").Replace("\"", "\\\"");
                    vtEmbedVideo = drAra["EmbedVideo"].ToString().Replace("\r", "").Replace("\n", "").Replace("\"", "\\\"");
                    vtKonum = drAra["HaberKonum"].ToString().Trim();
                    vtKategoriAdi = drAra["KategoriAdi"].ToString().Trim();
                    vtHaberResim = drAra["HaberResimUrl"].ToString();
                    vtMansetResim = drAra["HaberMansetResimUrl"].ToString();
                    vtAktifKontrol = !string.IsNullOrEmpty(drAra["Aktif"].ToString()) ? Convert.ToInt32(drAra["Aktif"]) : 0;
                    vtMansetBaslik = drAra["MansetBaslik"].ToString();
                    //FileUpload1.ResolveUrl("~/foto/haber-resimleri/image-20200505-150207.jpg");
                    //FileUpload1.GetRouteUrl("~/foto/haber-resimleri/image-20200505-150207.jpg");
                }

                CKEditorControl1.Text = vtHaberMetin;

                bgl.Close();


            }

        }

        public void HaberGuncellendi()
        {


            string id = Request.QueryString["Kaydedilen_ID"].ToString();
            SqlCommand kmt_guncel = new SqlCommand();
            kmt_guncel.Connection = bgl;
            bgl.Open();
            kmt_guncel.CommandText = "SP_HaberAra";
            kmt_guncel.Parameters.AddWithValue("@ID", id);
            kmt_guncel.CommandType = CommandType.StoredProcedure;

            try
            {
                SqlDataReader dr_guncel = kmt_guncel.ExecuteReader();

                while (dr_guncel.Read())
                {
                    vtHaberID = Convert.ToInt32(dr_guncel["id"]);
                    vtHaberBaslik = dr_guncel["HaberBaslik"].ToString();
                    vtHaberOzet = dr_guncel["HaberOzet"].ToString();
                    vtHaberMetin = dr_guncel["HaberMetin"].ToString();
                    vtEmbedVideo = dr_guncel["EmbedVideo"].ToString().Replace("\"", "\\\"");
                    vtHaberResim = dr_guncel["HaberResimUrl"].ToString();
                    vtMansetResim = dr_guncel["HaberMansetResimUrl"].ToString();
                    vtAktifKontrol = Convert.ToInt32(dr_guncel["Aktif"]);
                    vtKonum = dr_guncel["HaberKonum"].ToString().Trim();
                    vtKategoriAdi = dr_guncel["KategoriAdi"].ToString().Trim();
                    vtMansetBaslik = dr_guncel["MansetBaslik"].ToString();
                }

                CKEditorControl1.Text = vtHaberMetin;

            }
            catch (Exception)
            {
                BasariliBaglanti = false;
            }
            bgl.Close();





        }

       
    }
}