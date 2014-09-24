<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <style type="text/css">
<!--
.button {
	display: inline-block;
	zoom: 1; /* zoom and *display = ie7 hack for display:inline-block */
	*display: inline;
	vertical-align: baseline;
	margin: 0 2px;
	outline: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font: 14px/100% Arial, Helvetica, sans-serif;
	padding: .5em 2em .55em;
	text-shadow: 0 1px 1px rgba(0,0,0,.3);
	-webkit-border-radius: .5em; 
	-moz-border-radius: .5em;
	border-radius: .5em;
	-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	-moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	box-shadow: 0 1px 2px rgba(0,0,0,.2);
}
.button:hover {
	text-decoration: none;
}
.button:active {
	position: relative;
	top: 1px;
}

.bigrounded {
	-webkit-border-radius: 2em;
	-moz-border-radius: 2em;
	border-radius: 2em;
}
.medium {
	font-size: 12px;
	padding: .4em 1.5em .42em;
}
.small {
	font-size: 11px;
	padding: .2em 1em .275em;
}

.blue {
	color: #d9eef7;
	border: solid 1px #0076a3;
	background: #0095cd;
	background: -webkit-gradient(linear, left top, left bottom, from(#00adee), to(#0078a5));
	background: -moz-linear-gradient(top,  #00adee,  #0078a5);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#00adee', endColorstr='#0078a5');
}
.blue:hover {
	background: #007ead;
	background: -webkit-gradient(linear, left top, left bottom, from(#0095cc), to(#00678e));
	background: -moz-linear-gradient(top,  #0095cc,  #00678e);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#0095cc', endColorstr='#00678e');
}
.blue:active {
	color: #80bed6;
	background: -webkit-gradient(linear, left top, left bottom, from(#0078a5), to(#00adee));
	background: -moz-linear-gradient(top,  #0078a5,  #00adee);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#0078a5', endColorstr='#00adee');
}
 body{text-align:center;}

-->
</style>
    <style>
        .panel {
            width: 1024px;
            height:auto;
            background:#def9fa;
            align-content:center;
            margin:0px auto; text-align:center;
        }

        .div1 {
            width: auto;
            height: auto;
            float: left;
        }

        .div2 {
            width:auto;
            height: auto;
            float: left;
        }

        .div3 {
            width: auto;
            height: auto;
            float: right;
            
        }
        .nav {
            width: 200px;
            height: auto;
            margin: 0 auto;
            background: #def9fa;
            position: fixed;
          
            text-align: center;
        }
        .navR {
            width: 200px;
            height: auto;
            
            margin:20px 824px;
            background: #def9fa;
            float:right;
            position: fixed;
              
            text-align: center;
        }
        .body {
            width:624px;
            height:auto;
            margin:auto 200px;

        }
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    <body>
<div style="margin:0px auto; text-align:center;">
    <form id="form1" runat="server">
    
     <div class="panel">
            <div >
                <img src="src/LOGO.jpg" />
                
            </div>
    <div class="nav">
            <a href="Index.aspx">回到主页</a>

             </div>
         <div class="body">
             <br/>
             <p style="font-size:25px;font-weight:bold">注&nbsp;册</p>
             
            用户名: 
             <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
             <asp:Label ID="Warn1" runat="server" Text="" ForeColor="Red"></asp:Label>
             <br/>
             <br/>
             密&nbsp&nbsp码:
             <asp:TextBox ID="PassWord" runat="server" TextMode="Password"></asp:TextBox>
             <asp:Label ID="Warn2" runat="server" Text="" ForeColor="Red"></asp:Label>
             <br/>
             <br/>
              确认密码:
             <asp:TextBox ID="PassWordSub" runat="server" TextMode="Password"></asp:TextBox>
             <asp:Label ID="Warn3" runat="server" Text="" ForeColor="Red"></asp:Label>
             <br/>
             <br/>
             <asp:Button ID="LogSub" runat ="server" Text="确 定" OnClick="LogSub_Click" CssClass="blue"/> &nbsp &nbsp &nbsp
             <asp:Button ID="RegLog" runat ="server" Text="登 陆" OnClick="RegLog_Click" CssClass="blue"/>
             
            </div>
          <p>
            <asp:Label ID="Warn4" runat="server" Text="" ForeColor="Red"></asp:Label>
        </p>
         <div style=" text-align:center;color:gray">
           Jup Travel —— 景升旅游网 All rights reserved!
            </div>

        </div>
    </form>
       </div>

       

</body>
</html>
