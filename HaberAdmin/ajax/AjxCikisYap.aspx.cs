using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HaberAdmin.ajax
{
    public partial class AjxCikisYap : System.Web.UI.Page
    {
        [System.Web.Services.WebMethod]
        public static string CikisYap(string islem)
        {
            if (!string.IsNullOrEmpty(islem) && islem == "cikisyaptir" && HttpContext.Current.Request.Cookies["cookiekontrol"] != null)
            {
                HttpCookie cok = new HttpCookie("cookiekontrol");
                cok.Expires = DateTime.Now.AddDays(-1d);
                HttpContext.Current.Response.Cookies.Add(cok);
            }
            return "Güvenli bir şekilde çıkış yaptınız!";

        }
    }
}