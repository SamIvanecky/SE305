using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_demo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=sam-laptop\sqlexpress;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select * from Logins where username=@username and password=@password", con);
        cmd.Parameters.AddWithValue("@username", TextBox1.Text);
        cmd.Parameters.AddWithValue("password", TextBox2.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();

        if (dt.Rows.Count > 0)
        {
            Response.Redirect("CustomerDash_Page.aspx");
        }
        else
        {
            Label1.Text = "Your username and password are incorrect";
            Label1.ForeColor = System.Drawing.Color.Red;

        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("CreateAcct.aspx");
    }
}