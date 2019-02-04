using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Response.Write(Session["Sum"] + "<br>");
                Response.Write(Request.QueryString.ToString());
                HttpCookieCollection cookies = Request.Cookies;
                if (cookies.Count > 0)
                {
                    for (int i = 0; i < cookies.Count; i++)
                    {
                        Response.Write(cookies[i].Name + " Value: " + cookies[i].Value);
                    }
                }

            }
        }

        protected void HomeButton_Click(object sender, EventArgs e)
        {
            int choice = 4;
            string str = "";
            if (CheckBox1.Checked)
                str = str + CheckBox1.Text + " ";
            if (CheckBox2.Checked)
                str = str + CheckBox2.Text + " ";
            if (CheckBox3.Checked)
                str = str + CheckBox3.Text + " ";

            if (RadioButton1.Checked)
            {
                str = str + RadioButton1.Text + " ";
                choice = 1;
            }
            else if (RadioButton2.Checked)
            {
                str = str + RadioButton2.Text + " ";
                choice = 2;
            }
            else if (RadioButton3.Checked)
            {
                str = str + RadioButton3.Text + " ";
                choice = 3;
            }

            Response.Write(str);
            Image1.ImageUrl = "~/images/" + choice + ".jpg";
            Response.Write(Request.Params[DataTextBox.Text] + "<br>");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            Response.Redirect("WebForm1.aspx?test=7&url=" + Image1.ImageUrl);
            
        }
    }
}