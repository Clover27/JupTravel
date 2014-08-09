<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <style type="text/css">
<!--
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
            height:500px;
            text-align:center;
            align-content:center;
            margin:auto auto;
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
            
                   <a  href="Login.aspx" >登陆</a>|<a href="Register.aspx">注册</a>
                
            </div>


            <div class="nav">
                
               
              <p><a href="Index.aspx" style="text-decoration:none;" >主&nbsp;&nbsp;页</a></p>
               <p><a href="UserInfo.aspx">个人信息</a></p> 
              
                <%--请实现，当点击该导航时index页面跳转到对应的位置（即自动滚到index页的地域分类和类型分类位置）--%>
                 <p> 地域分类<br /></p>
                
                <p>类型分类</p></div>

            <div class="navR">
                
                
                <p>联系我们</p>
                 <p><a href="news_list.aspx" >新闻资讯</a></p>
                <p>导2航</p>
                 <p>导2航</p>
                </div>
            <div class="body">
               <%-- 请将以下修改为滚动新闻--%>
               <div class="news_img">
                   <img src="src/news_pic/1.jpg" width="624"  /><br/>

               </div>
                 <div style =" width :auto;height:400px; ">
                     <img src="src/index_pic/area_img.png" />


                 </div>
                <div style =" width :auto;height:400px; ">
                     <img src="src/index_pic/type_img.png" />


                 </div>
                Body<br/>
                Body<br/>
                Body<br/>
                Body<br/>
                Body<br/>
                Body<br/>
                Body<br/>
                Body<br/>Body<br/>
                Body<br/>
                Body<br/>
                Body<br/>
                Body<br/>
                Body<br/>
                </div>
            

            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>

            <br/>
            <br/>
            <br/><br/>
            <br/>
            <br/>
            <br/><br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>

            <br/>
            <br/>
            <br/><br/>
            <br/>
            <br/>
            <br/><br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>

            <br/>
            <br/>
            <br/><br/>
            <br/>
            <br/>
            <br/>
            <div style=" text-align:center;color:gray">
           Jup Travel —— 景升旅游网 All rights reserved!
            </div>
        </div>

        

    </form>

        </div>
</body>
</html>
