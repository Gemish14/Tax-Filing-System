using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class ComplaintRegister : System.Web.UI.Page
{
    SqlConnection sc = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=G:\\Project\\NewITProject\\App_Data\\ClientInfo.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Insert into ClientComplaint (phn, ComplaintMsg) values(@phn, @ComplaintMsg)", sc);
        cmd.Parameters.AddWithValue("@phn", TBPHN.Text);
        cmd.Parameters.AddWithValue("@ComplaintMsg", TBMSG.Text);
        //cmd.Parameters.AddWithValue("@SelectedRadBtn", SelectedRadBtn);
        sc.Open();
        cmd.ExecuteNonQuery();
        sc.Close();
        //LBMSG.Text = "Complaint Has Been Registered";   
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        TBPHN.Text = TBMSG.Text = "";
        Tax.Text = Service.Text = OTHER.Text = "";
    }
}