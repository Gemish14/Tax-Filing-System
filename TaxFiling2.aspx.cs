using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class TaxFiling2 : System.Web.UI.Page
{
    SqlConnection sc = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\NewITProject\\App_Data\\ClientInfo.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Insert into TaxFiling (CompName,CompType,OwnerName,Income) values(@CompName,@CompType,@OwnerName,@Income)", sc);
        cmd.Parameters.AddWithValue("@CompName", TBCompNm.Text);
        cmd.Parameters.AddWithValue("@CompType", DDCompType.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@OwnerName", TBOwnNm.Text);
        cmd.Parameters.AddWithValue("@Income", TBInc.Text);
        SqlDataAdapter adpt = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adpt.Fill(ds);

        if (ds.Tables[0].Rows.Count == 1)
        {
            Session["CompName"] = TBCompNm.Text;
            Session["Income"] = TBInc.Text;
            Response.Redirect("TaxFiling3.aspx");
        }
    }
}