using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class news : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] != "yes") { TextBox1.Visible = false; Button1.Visible = false; }
        if (Session["login"] == "yes") { Label3.Visible = false; }

        string id = Request.QueryString[0].ToString();
        Session["fromid"] = int.Parse(id);
        string s = Server.MapPath("./");
        
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + s + "App_Data\\Travel.mdf;Integrated Security=True;Connect Timeout=5");
        con.Open();
        string title = "select title from news where id=" + id;
        SqlCommand cmd1 = new SqlCommand(title, con);
        Label1.Text = cmd1.ExecuteScalar().ToString();
        string content = "select content from news where id=" + id;
        SqlCommand cmd2 = new SqlCommand(content, con);
        Label2.Text = cmd2.ExecuteScalar().ToString();



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = Server.MapPath("./");
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + s + "App_Data\\Travel.mdf;Integrated Security=True;Connect Timeout=5");
        con.Open();
        string strsql = "insert into comment(name,time,content,fromid) values ('" + Session["name"] + "','" + System.DateTime.Now.ToString() + "','" + TextBox1.Text + "','" + Session["fromid"] + "')";
        SqlCommand cmd = new SqlCommand(strsql, con);
        cmd.ExecuteNonQuery();
        Response.Redirect(Request.Url.ToString()); 
    }
}