using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Control_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text==""||TextBox3.Text==""||TextBox5.Text=="")
        {

        }
        else
        {
            string s = Server.MapPath("../");
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + Server.MapPath("./") + "App_Data\\Travel.mdf;Integrated Security=True;Connect Timeout=5");
            con.Open();
            string a = System.DateTime.Now.ToString();
            string r1; if (RadioButton1.Checked == true) r1 = "announce"; else { r1 = "news"; }
            string strsql = "insert into news(title,time,author,type,content) values ('" + TextBox1.Text + "','" + a + "','" + TextBox3.Text + "','" + r1 + "','" + TextBox5.Text + "')";
            SqlCommand cmd = new SqlCommand(strsql, con);
            cmd.ExecuteNonQuery();
            Response.Redirect("PutNews.aspx");
        }
            
    }
}