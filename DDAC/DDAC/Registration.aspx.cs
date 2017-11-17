using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDAC
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void createUser_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                func x = new func();
                int login = x.createLogin(txt_fullname.Text, txt_register_email.Text,confirmPass.Text,txt_phone.Text);

                if (login == 0)
                {
                    Session["username"] = txt_fullname.Text;
                    Response.Redirect("~/Booking.aspx");
                }
                else if (login == 1)
                {
                    Response.Write("<script>alert('Wrong Email or Password');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Connection Error');</script>");
                }
            }
        }
    }
}