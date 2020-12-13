using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HaberAdmin
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection bgl = new SqlConnection("Data Source=.;Initial Catalog=dbProfHaber;Integrated Security=SSPI;");
        public int sayac =0;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand kmt = new SqlCommand();
            kmt.Connection = bgl;
            bgl.Open();
            kmt.CommandText = "SP_Panel_AnaListe";
            kmt.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = kmt.ExecuteReader();

            Rptr_Ana_Liste.DataSource = dr;
            Rptr_Ana_Liste.DataBind();
            bgl.Close();
        }
    }
}