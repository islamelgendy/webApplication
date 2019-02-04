using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string con = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection sqlCon = new SqlConnection(con);
            sqlCon.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Staff");
            cmd.Connection = sqlCon;

            NamesDropDownList.DataSource = cmd.ExecuteReader();
            NamesDropDownList.DataTextField = "Title";
            NamesDropDownList.DataValueField = "Name";
            NamesDropDownList.DataBind();

            sqlCon.Close();
            sqlCon.Open();
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            sqlCon.Close();
        }
    }
}