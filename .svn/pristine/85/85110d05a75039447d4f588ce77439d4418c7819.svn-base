using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HaberAdmin.Haberler
{
    public partial class HaberAraID : System.Web.UI.Page
    {
        public string AramaSonuc = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["HaberAra"] != null && !string.IsNullOrEmpty(Request.QueryString["HaberAra"].ToString()))
            {
                AramaSonuc = "Haber bulunamadı..";
            }
        }
    }
}