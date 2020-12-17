using System;
using System.Collections.Generic;
using System.Linq;
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
    }
}