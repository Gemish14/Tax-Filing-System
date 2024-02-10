using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class TaxFiling : System.Web.UI.Page
{
    SqlConnection sc = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=G:\\Project\\NewITProject\\App_Data\\ClientInfo.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Insert into TaxFiling (PAN,GST,AadharNo) values(@PAN,@GST,@AadharNo)", sc);
        cmd.Parameters.AddWithValue("@PAN", TBPAN.Text);
        cmd.Parameters.AddWithValue("@AadharNo", TBAadNo.Text);
        cmd.Parameters.AddWithValue("@GST", TBGST.Text);

        SqlDataAdapter adpt = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adpt.Fill(ds);

        if (ds.Tables[0].Rows.Count == 0)
        {
            Session["PAN"] = TBPAN.Text;
            Session["GST"] = TBGST.Text;
            Response.Redirect("TaxFiling2.aspx");
        }
    }
}