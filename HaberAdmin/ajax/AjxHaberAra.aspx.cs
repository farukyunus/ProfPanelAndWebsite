using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HaberAdmin.ajax
{
    public partial class AjxHaberAra : System.Web.UI.Page
    {

        [System.Web.Services.WebMethod]
        public static string OrnekPost(string ArananID)
        {
            return ArananID + " değeriyle post işlemi gerçekleştirildi.";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}