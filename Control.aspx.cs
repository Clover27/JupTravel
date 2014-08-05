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

    }
    protected string Cstring()
    {
        string s = Server.MapPath("./");
        return "Data Source=(LocalDB)\\v11.0;AttachDbFilename="+s+"App_Data\\Travel.mdf;Integrated Security=True;Connect Timeout=5";
    }
}