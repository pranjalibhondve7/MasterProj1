using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterProj1
{
  public partial class Registration1 : System.Web.UI.Page
  {
    SqlConnection con;
    SqlCommand cmd;
    String cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
      con = new SqlConnection(cnfg);
      cmd = new SqlCommand();
      cmd.Connection = con;
  
      //Response.Write(cnfg);
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {

      string ext = Path.GetExtension(fuAdhar.FileName);
      string adharupload = "~/images/" + fuAdhar.FileName;
        fuAdhar.PostedFile.SaveAs(Server.MapPath("~/images/" + fuAdhar.FileName));

      string ext1 = Path.GetExtension(fuAdhar.FileName);
      string panupload = "images" + fuAdhar.FileName;
      fuAdhar.PostedFile.SaveAs(Server.MapPath("~/images/" + fuAdhar.FileName));

      cmd.CommandText = "Insert Into UserRegistration1(First_Name,Last_Name,DOB,Email,Mob_No,Gender,Address,Country,State,City,Pincode,Fees,Username,Password,Adhar_Upload,Pan_Upload,Checkbox)values(@fname,@lname,@dob,@email,@mobno,@gender,@addres,@country,@state,@city,@pincode,@fees,@username,@pass,@adhar,@pan,@checkbox) ";

      cmd.Parameters.AddWithValue("@fname", txtfname.Text);
      cmd.Parameters.AddWithValue("@lname", txtlname.Text);
      cmd.Parameters.AddWithValue("@dob", txtdob.Text);
      cmd.Parameters.AddWithValue("@email", txtemail.Text);
      cmd.Parameters.AddWithValue("@mobno", txtmobno.Text);
      cmd.Parameters.AddWithValue("@addres", txtaddress.Text);
      cmd.Parameters.AddWithValue("@country", ddlcountry.SelectedItem.Text);
      cmd.Parameters.AddWithValue("@state", ddlstate.SelectedItem.Text);
      cmd.Parameters.AddWithValue("@city", ddlcity.SelectedItem.Text);
      cmd.Parameters.AddWithValue("@pincode", txtpin.Text.ToString());
      cmd.Parameters.AddWithValue("@fees", txtfees.Text.ToString());
      cmd.Parameters.AddWithValue("@username", txtuser.Text.ToString());
      cmd.Parameters.AddWithValue("@password", txtpass.Text);
      cmd.Parameters.AddWithValue("@adhar", adharupload.ToString());
      cmd.Parameters.AddWithValue("@pan", panupload.ToString());
      cmd.Parameters.AddWithValue("@pass", txtpass.Text);

      if (rbmale.Checked) { 
      cmd.Parameters.AddWithValue("@gender","Male");
      }
      if (rbfemale.Checked)
      {
        cmd.Parameters.AddWithValue("@gender", "Female");
      }
      if (rbother.Checked)
      {
        cmd.Parameters.AddWithValue("@gender", "Other");
      }
      if (CheckBox1.Checked)
      {
        cmd.Parameters.AddWithValue("@checkbox", "Checked");
      }
      con.Open();
      int index = cmd.ExecuteNonQuery();
      if(index > 0)
      {
        Response.Write("<script>alert('Insert Data Successfully..........')</script>");
      }
      else
      {
        Response.Write("<script>alert('Insert Data Failed......')</script>");
      }
      con.Close();
      //Response.Redirect("Form1.aspx");
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
      Response.Redirect("Login.aspx");
    }

    protected void btnadhar_Click(object sender, EventArgs e)
    {

    }

    protected void btnpanupload_Click(object sender, EventArgs e)
    {

    }
  }
}
