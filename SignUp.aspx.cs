using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class SignUp : System.Web.UI.Page
{
    SqlConnection sc = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=G:\\Project\\NewITProject\\App_Data\\ClientInfo.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
       TextboxUser.Text = TextBoxPwd.Text = TextBoxFN.Text = TextBoxLN.Text = ImageDP.ImageUrl = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/UserPhoto/") + FileUpload1.FileName);
            Label3.Text = "Image Uploaded" + FileUpload1.FileName;
            ImageDP.ImageUrl = "~/UserPhoto/" + FileUpload1.FileName;
        }
        else
            Label3.Text="Image Not Uploaded";
        
    }

    protected void SignUpBtn_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Insert into ClientDetails (fname,lname,pic,Usernm,pwd)values(@fname,@lname,@pic,@Usernm,@pwd)", sc);
        cmd.Parameters.AddWithValue("@fname", TextBoxFN.Text);
        cmd.Parameters.AddWithValue("@lname", TextBoxLN.Text);
        cmd.Parameters.AddWithValue("@Usernm", TextboxUser.Text);
        cmd.Parameters.AddWithValue("@pwd", TextBoxPwd.Text);
        cmd.Parameters.AddWithValue("@pic", ImageDP.ImageUrl);
        sc.Open();
        cmd.ExecuteNonQuery();
        sc.Close();
        ClientScript.RegisterClientScriptBlock(this.GetType(), "RandomText", "swal('Good job!','Your Profile Has Been Registered', 'success')", true);
    }
}
