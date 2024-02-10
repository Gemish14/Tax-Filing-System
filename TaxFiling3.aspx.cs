using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TaxFiling3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Cancel_Click(object sender, EventArgs e)
    {
        TBCard.Text = TBCVV.Text = TBPay.Text = TBValidity.Text = "";
        Response.Redirect("Default.aspx");
    }
    protected void PayBtn_Click(object sender, EventArgs e)
    {

    }
}