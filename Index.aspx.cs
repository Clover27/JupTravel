using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == "yes")
        {
            HyperLink1.Text = "欢迎您"; HyperLink1.NavigateUrl = "";
            HyperLink2.Text = Session["name"].ToString();
            HyperLink2.NavigateUrl = "UserInfo.aspx";
        }
    }
}