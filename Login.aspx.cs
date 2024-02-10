using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    SqlConnection sc = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\NewITProject\\App_Data\\ClientInfo.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select Usernm,role,fname,lname,pic,role,pwd from ClientDetails where Usernm=@Usernm and pwd=@pwd",sc);
        cmd.Parameters.AddWithValue("@Usernm", TextboxUser.Text);
        cmd.Parameters.AddWithValue("@pwd", TextBoxPwd.Text);
        
        SqlDataAdapter adpt = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adpt.Fill(ds);

        if (ds.Tables[0].Rows.Count == 1)
        {

            Session["Usernm"] = TextboxUser.Text;
            Session["fname"] = ds.Tables[0].Rows[0]["fname"].ToString();
            Session["pic"] = ds.Tables[0].Rows[0]["pic"].ToString();
            Session["lname"] = ds.Tables[0].Rows[0]["lname"].ToString();
            Session["role"] = ds.Tables[0].Rows[0]["role"].ToString();
            if (ds.Tables[0].Rows[0]["role"].ToString() == "PageAdmin")
                Response.Redirect("AdminPage.aspx");
            else

                Response.Redirect("Default.aspx");
        }
        else
            Label1.Text = "Invalid Credentials";
            //ClientScript.RegisterClientScriptBlock(this.GetType(), "RandomText", "Swal.fire({icon: 'error',title: 'Oops...',text: 'Incorrect Credentials!'})')");
         
    }
     
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextboxUser.Text = "";
        TextBoxPwd.Text = "";
    }
}