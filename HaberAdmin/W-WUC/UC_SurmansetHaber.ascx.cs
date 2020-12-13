using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HaberAdmin.W_WUC
{
    public partial class UC_SurmansetHaber : System.Web.UI.UserControl
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
            kmt.CommandText = "W_SP_SurmansetHaberGetir";
            kmt.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = kmt.ExecuteReader();

            if (mobil)
            {
                Rptr_Surmanset_Mobil.DataSource = dr;
                Rptr_Surmanset_Mobil.DataBind();
            }
            else
            {
                Rptr_Surmanset.DataSource = dr;
                Rptr_Surmanset.DataBind();
            }

            bgl.Close();

        }
    }
}