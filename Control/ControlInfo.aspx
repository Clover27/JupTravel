<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ControlInfo.aspx.cs" Inherits="Control_Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     <style type="text/css">
<!--

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

        
        .nav {
            width: 200px;
            height: auto;
            margin: 0 auto;
            background: #def9fa;
            position: fixed;
          
            text-align: center;
        }
        
        .body {
            width:624px;
            height:auto;
            margin:auto 20px;

        }
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    
    
    <form id="form1" runat="server">
    <div class="panel">
      <div >
                <img src="../src/LOGO.jpg" />
                
            </div>
           <%-- 请修改以下登陆|注册信息以显示当前登陆状况--%>
            


            <div class="nav">
                
                <br/>
                <a href="ControlUser.aspx">管理用户</a><br /><br />
                <a href="PutNews.aspx">发布新闻</a><br /><br />
                <a href="ControlNews.aspx">管理新闻</a><br /><br />
                <a href="ControlView.aspx">景点分类</a><br /><br />
                <a href="ControlInfo.aspx">景点信息</a><br /><br />
                <a href="../Index.aspx">返回主页</a><br /><br />
               </div>

            <div class="body">
                        <br />
                        这里是管理员界面
                        
                </div>
           
        </div>

        


   
    </form>
</body>
</html>
