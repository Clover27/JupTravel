<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

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
a {
            text-decoration:none;
            font-weight:700;
              color:black;
            font:900;
        }
a:visited {
            text-decoration:none;
            font-weight:700;
            color:black;
            font:900;
            
        }
a:active {
            text-decoration:none;
            font-weight:700;
             color:black;
            font:900;
            
        }
a:hover {
            text-decoration:none;
            font-weight:700;
            color:darkblue;
            font:900;
            
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
            margin: 20px auto;
            background: #def9fa;
            position: fixed;
            background-image:url(src/index_pic/nav_bg.jpg);
            text-align: center;
            color:darkblue;
            
        }
        .navR {
            width: 200px;
            height: auto;
            
            margin:20px 824px;
            background: #def9fa;
            float:right;
            position: fixed;
              background-image:url(src/index_pic/nav_bg.jpg);
            text-align: center;
        }
        .body {
            width:624px;
            height:auto;
            margin:auto 200px;

        }
        .news_img {
            width:624px;
            height:400px;
            text-align:center;
            align-content:center;
            margin:auto auto;
        }
        .vp1 {
            width:208px;
            height:300px;
        }
         .vp2 {
            width:208px;
            height:300px;
            margin-left:208px;
            margin-top:-300px;
        }
          .vp3 {
            width:208px;
            height:300px;
            margin-left: 416px;
            margin-top:-300px;
        }
        .d1 {
            width:208px;
            height:20px;
            margin-top:3px;
        }
         .d2 {
            width:208px;
            height:20px;
            margin-left:208px;
            margin-top:-20px;
        }
          .d3 {
            width:208px;
            height:20px;
            margin-left: 416px;
            margin-top:-20px;
        }
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <div style="margin:0px auto; text-align:center;">
    <form id="form1" runat="server">
        <div class="panel">
            <div >
                <img src="src/LOGO.jpg" />
                
            </div>
           <%-- 请修改以下登陆|注册信息以显示当前登陆状况--%>
            <div class ="div3">
            
                   <asp:HyperLink ID="HyperLink1" runat="server" Text="登陆"  ForeColor="Blue"  NavigateUrl="Login.aspx"></asp:HyperLink>
            
                  |
        <asp:HyperLink ID="HyperLink2" runat="server" Text="注册"  ForeColor="Blue"  NavigateUrl="Register.aspx"></asp:HyperLink>
            </div>


            <div class="nav">
                
               
              <br />
              <p ><a href="Index.aspx">主&nbsp;&nbsp;页</a></p>
               <p><a href="UserInfo.aspx">个人信息</a></p> 
              
                <p><a href="news_list.aspx">新闻资讯</a> </p>
                 
                <br />
                </div>
            <div class="navR">
                
                
                 <br />
                 <p> <a href="search.aspx">景点查询</a><br /></p>
                 <p> <a href="area.aspx">地域分类</a><br /></p>
                 <p><a href="type.aspx">类型分类</a></p><br />
                </div>
            <div class="body">
               <%-- 请将以下修改为滚动新闻--%>
               <div class="news_img">
                   <img src="src/news_pic/1.jpg" width="624"  /><br/>

               </div>
                 <div style =" width :auto;height:400px; ">
                     <img src="src/index_pic/area_img.png" />
                     <div class="vp1"><a href="area.aspx?id=市内景点"><img src="src/index_pic/a1.png"/></a></div>
                    <div class="vp2"><a href="area.aspx?id=郊区景点"><img src="src/index_pic/a2.png"/></a></div>
                    <div class="vp3"><a href="area.aspx?id=远郊区县"><img src="src/index_pic/a3.png"/></a></div>
                     <div class ="d1"><a href="area.aspx?id=市内景点">市内景点</a></div>
                     <div class ="d2"><a href="area.aspx?id=郊区景点">郊区景点</a></div>
                     <div class ="d3"><a href="area.aspx?id=远郊区县">远郊区县</a></div>
                 </div>
                <div style =" width :auto;height:400px; ">
                     <img src="src/index_pic/type_img.png" />
                    <div class="vp1"><a href="type.aspx?id=宫殿古迹"><img src="src/index_pic/c1.png"/></a></div>
                    <div class="vp2"><a href="type.aspx?id=公园广场"><img src="src/index_pic/c2.png"/></a></div>
                    <div class="vp3"><a href="type.aspx?id=名街名苑"><img src="src/index_pic/c3.png"/></a></div>
                    <div class ="d1"><a href="type.aspx?id=宫殿古迹">宫殿古迹</a></div>
                     <div class ="d2"><a href="type.aspx?id=公园广场">公园广场</a></div>
                     <div class ="d3"><a href="type.aspx?id=名街名苑">名街名苑</a></div>
                 </div>
           
                </div>
            

            <div style=" text-align:center;color:gray">
           Jup Travel —— 景升旅游网 All rights reserved!
            </div>
        </div>

        

    </form>

        </div>
</body>
</html>
