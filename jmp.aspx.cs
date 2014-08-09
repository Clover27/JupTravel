using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["Default"] == "unlogin")
        {
            Button1.Text = "您还未登录，请登陆";
            Response.Redirect("Login.aspx");
        }
        if ((string)Session["Default"] == "enlogin")
        {
            Button1.Text = "您已登录，返回用户界面";
            Response.Redirect("UserInfo.aspx");
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if ((string)Session["Default"] == "unlogin")
        Response.Redirect("Login.aspx");
        if ((string)Session["Default"] == "enlogin")
        Response.Redirect("UserInfo.aspx");
    }
}