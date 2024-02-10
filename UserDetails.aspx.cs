using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class UserDetails : System.Web.UI.Page
{
    SqlConnection sc = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename= F:\\NewITProject\\APP_DATA\\CLIENTINFO.MDF; Integrated Security=True;Connect Timeout=30;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Insert into UserDetails (FirstName,LastName,Address,State,CompanyName,PAN,GST,Mobile,District) values(@FirstName,@LastName,@Address,@State,@CompanyName,@PAN,@GST,@Mobile,@District)", sc);
        cmd.Parameters.AddWithValue("@FirstName", TBFN.Text);
        cmd.Parameters.AddWithValue("@LastName", TBLN.Text);
        cmd.Parameters.AddWithValue("@Address", TBADD.Text);
        cmd.Parameters.AddWithValue("@CompanyName", TBCO.Text);
        cmd.Parameters.AddWithValue("@PAN", TBPAN.Text);
        cmd.Parameters.AddWithValue("@GST", TBGST.Text);
        cmd.Parameters.AddWithValue("@Mobile", TBMOB.Text);
        cmd.Parameters.AddWithValue("@District", TBDIST.Text);
        cmd.Parameters.AddWithValue("@State", DDLState.SelectedItem.Text);
       
        sc.Open();
        cmd.ExecuteNonQuery();
        sc.Close();
        DisplayRegister.Text = "User Registered";       
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TBFN.Text = "";
        TBADD.Text = "";
        TBCO.Text = "";
        TBLN.Text = "";
        TBGST.Text = "";
        TBDIST.Text = "";
        TBPAN.Text = "";
        TBMOB.Text = "";
       
    }
}