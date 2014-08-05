using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RegLog_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Login.aspx");
    }
    protected void LogSub_Click(object sender, EventArgs e)
    {
        if (UserName.Text == "") Warn1.Text = "请正确输入用户名";
        if (PassWord.Text == "") Warn2.Text = "请正确输入密码";
        if (PassWordSub.Text != PassWord.Text) Warn3.Text = "两次密码不相符";
        if (UserName.Text != "" && PassWord.Text != "" && PassWordSub.Text == PassWord.Text)
        {
            string s = Server.MapPath("./");
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + s + "App_Data\\Travel.mdf;Integrated Security=True;Connect Timeout=5");
            con.Open();
            string check = "select * from people where username='" + UserName.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(check, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "table");
            if (da.Fill(ds, "table") > 0)
            {
                Warn1.Text = "用户名重复";
            }
            else
            {
                string strsql = "insert into people(username,password) values ('" + UserName.Text + "','" + PassWord.Text + "')";
                SqlCommand cmd = new SqlCommand(strsql, con);
                cmd.ExecuteNonQuery();
                /*Warn4.Text = "注册成功，将跳转到登陆界面";*/
                Response.Redirect("Login.aspx");
            }
        }
    }
}