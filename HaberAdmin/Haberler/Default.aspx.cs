using System;
using System.Collections.Generic;
using System.Configuration;
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
        SqlConnection bgl;

        
        public int sayac =0;

        protected void Page_Load(object sender, EventArgs e)
        {
            bgl = new SqlConnection();
            bgl.ConnectionString = ConfigurationManager.ConnectionStrings["BglConfig"].ConnectionString.ToString();

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