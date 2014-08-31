using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class area : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["lastclick"] = "0";
        if (Request.QueryString["id"] != null)    
            Session["lastclick"] = Request.QueryString["id"].ToString();
        
    }
}