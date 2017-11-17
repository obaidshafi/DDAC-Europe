using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDAC
{
    public partial class SearchFlight : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDatePicker.Text = Calendar1.SelectedDate.ToLongDateString();
            Calendar1.Visible = false;
        }

        protected void search_Click(object sender, EventArgs e)
        {
            string origin = Origin.SelectedValue;
            string destination = selectDestination.SelectedValue;
            DateTime dt = Calendar1.SelectedDate;

            func x = new func();
            DataTable t = x.getMap(destination, origin, dt);

            GridView1.DataSource = t;
            GridView1.DataBind();
        }

       
        protected void rowselectclick(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                func x = new func();
                string n = Session["username"].ToString();
                GridViewRow row = GridView1.SelectedRow;

                // In this example, the first column (index 0) contains

                string o = row.Cells[1].Text;
                int create = x.createbooking(n, o);

                if (create == 0)
                {
                    Response.Redirect("~/Booking.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Not Created');</script>");
                }
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}