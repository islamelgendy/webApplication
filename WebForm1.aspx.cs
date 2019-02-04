using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


namespace WebApplication2
{
    

    public partial class WebForm1 : System.Web.UI.Page
    {
        protected string xx;
        int k = 10;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int k = 0;
                xx = "Test";
                NameTextBox.Text = "Islam Taha";
                AgeTextBox.Text = "30";
                NameTextBox.Focus();
                Response.Write(k + "<br>");
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            Response.Write(NameTextBox.Text + "<br>");
            Response.Write(AgeTextBox.Text + "<br>");
            Response.Write(DropDownList1.Text + " , " + DropDownList1.SelectedValue + "<br>");
            Response.Write(ViewState["Sum"] + "<br>");
            HttpCookie cookie = new HttpCookie(xx, "xx: Testing cookie");
            Response.Cookies.Add(cookie);
        }

        protected void SumButton_Click(object sender, EventArgs e)
        {
            ResultTextBox.Text = (int.Parse(Num1TextBox.Text) + int.Parse(Num2TextBox.Text)).ToString();
            Session["Sum"] = ResultTextBox.Text;
            Session.Add("Test", "testing");
            ViewState["Sum"] = ResultTextBox.Text;
        }
    }
}