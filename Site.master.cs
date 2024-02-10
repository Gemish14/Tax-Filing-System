using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Usernm"] != null)
        {
            Label1.Text = Session["fname"].ToString();
            Label2.Text = Session["lname"].ToString();
            if (Session["pic"] != null)
            ImageDP.ImageUrl = Session["pic"].ToString();
        }
        else
            Response.Redirect("Login.aspx");
    }
   
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["Usernm"] = null;
        Session["pic"] = null;
        Session["role"] = null;
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
}
