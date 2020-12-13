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
    public partial class UC_MansetAltiHaber : System.Web.UI.UserControl
    {
        SqlConnection bgl;
        protected void Page_Load(object sender, EventArgs e)
        {
            bgl = new SqlConnection();
            bgl.ConnectionString = ConfigurationManager.ConnectionStrings["BglConfig"].ConnectionString.ToString();

            SqlCommand kmt = new SqlCommand();
            kmt.Connection = bgl;
            bgl.Open();
            kmt.CommandText = "W_SP_MansetAltiHaberGetir";
            kmt.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = kmt.ExecuteReader();

            Rptr_Mansetalti.DataSource = dr;
            Rptr_Mansetalti.DataBind();
            bgl.Close();

        }
    }
}