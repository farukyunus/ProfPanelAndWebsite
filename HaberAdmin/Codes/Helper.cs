﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace HaberAdmin.Codes
{
    public class Helper
    {

        public static string NullStrKontrol(string txt)
        {
            if (!string.IsNullOrEmpty(txt))
            {
                txt = txt;
            }
            else
            {
                txt = "";
            }


            return txt;

        }

        public static string ImgSec_Durum(string txt)
        {
            txt = txt == "1" ? "<img src=\"/static/icons/tick.png\" width=\"20\"/>" : "<img src=\"/static/icons/wrong.png\" width=\"20\"/>";
            return txt;
        }
        public static string TxtKisaltma(string metin, int maxKarakterSayisi)
        {
            string _kesilmismetin = string.Empty;
            if (metin.Length > maxKarakterSayisi)
            {
                if (metin.Substring(maxKarakterSayisi, 1) == " ")
                {
                    _kesilmismetin = metin.Substring(0, maxKarakterSayisi) + "..";
                }
                else
                {
                    for (int i = maxKarakterSayisi; i >= 0; i--)
                    {
                        if (metin.Substring(i, 1) == " ")
                        {
                            _kesilmismetin = metin.Substring(0, i) + ".."; break;
                        }
                        else
                            _kesilmismetin = " ";
                    }
                }
            }
            else
                _kesilmismetin = metin;
            return _kesilmismetin;
        }

        public static string ToURL(string s)
        {
            if (string.IsNullOrEmpty(s)) return "";
            if (s.Length > 80)
                s = s.Substring(0, 80);
            s = s.Replace("ş", "s");
            s = s.Replace("Ş", "S");
            s = s.Replace("ğ", "g");
            s = s.Replace("Ğ", "G");
            s = s.Replace("İ", "I");
            s = s.Replace("ı", "i");
            s = s.Replace("ç", "c");
            s = s.Replace("Ç", "C");
            s = s.Replace("ö", "o");
            s = s.Replace("Ö", "O");
            s = s.Replace("ü", "u");
            s = s.Replace("Ü", "U");
            s = s.Replace("'", "");
            s = s.Replace("\"", "");
            s = s.ToLower();
            Regex r = new Regex("[^a-zA-Z0-9_-]");
            //if (r.IsMatch(s))
            s = r.Replace(s, "-");
            if (!string.IsNullOrEmpty(s))
                while (s.IndexOf("--") > -1)
                    s = s.Replace("--", "-");
            if (s.StartsWith("-")) s = s.Substring(1);
            if (s.EndsWith("-")) s = s.Substring(0, s.Length - 1);
            return s;
        }


    }
}