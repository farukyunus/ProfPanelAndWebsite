using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HaberAdmin.W_Anasayfa
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        SqlConnection bgl;
        public bool mobil = false; 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Browser.IsMobileDevice)
                mobil = true;

            bgl = new SqlConnection();
            bgl.ConnectionString = ConfigurationManager.ConnectionStrings["BglConfig"].ConnectionString.ToString();

            SqlCommand kmt = new SqlCommand();
            kmt.Connection = bgl;
            bgl.Open();
            kmt.CommandText = "W_SP_MansetHaberleriGetir";
            kmt.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = kmt.ExecuteReader();

            Rptr_Manset.DataSource = dr;
            Rptr_Manset.DataBind();
            bgl.Close();
        }
    }
}