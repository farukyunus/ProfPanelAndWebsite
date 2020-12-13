using System;
using System.Data;


    public class MansetHaberleri
    {
        //int _HaberID;
        //string _HaberBaslik;
        //string telefon;

        //public int HaberID { get { return _HaberID; } set { _HaberID = value; } }
        //public string HaberBaslik { get { return _HaberBaslik; } set { _HaberBaslik = value; } }

        public static int HaberID { get; set; }
        public static string HaberBaslik { get; set; }
        public static string MansetBaslik { get; set; }
        public static string HaberOzet { get; set; }
        public static string HaberMetin { get; set; }
        public static string HaberResimUrl { get; set; }
        public static string HaberMansetResimUrl { get; set; }
        public static string HaberKutuResimUrl { get; set; }
        public static int Aktif { get; set; }
        public static string KategoriAdi { get; set; }
        public static int KategoriID { get; set; }
        public static int Goruntulenme { get; set; }
        public static int AnasayfadaGorun { get; set; }
        public static int SeoHaberi { get; set; }
        public static string EmbedVideo { get; set; }
        public static string HaberKonum { get; set; }
        public static string Kaydeden { get; set; }
        public static DateTime HaberTarih { get; set; }

        public MansetHaberleri (DataRow row)
        {
            
            
        }
    }





