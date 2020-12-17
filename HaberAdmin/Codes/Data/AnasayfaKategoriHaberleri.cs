﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HaberAdmin.Codes.Data
{
    public class AnasayfaKategoriHaberleri
    {
        public int HaberID { get; set; }
        public string HaberBaslik { get; set; }
        public string MansetBaslik { get; set; }
        public string HaberOzet { get; set; }
        public string HaberMetin { get; set; }
        public string HaberResimUrl { get; set; }
        public string HaberMansetResimUrl { get; set; }
        public string HaberKutuResimUrl { get; set; }
        public string KategoriAdi { get; set; }
        public int KategoriID { get; set; }
        public int Goruntulenme { get; set; }
        public int AnasayfadaGorun { get; set; }
        public int SeoHaberi { get; set; }
        public string EmbedVideo { get; set; }
        public string HaberKonum { get; set; }
        public string Kaydeden { get; set; }
        public DateTime HaberTarih { get; set; }

    }
}