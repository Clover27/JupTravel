<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="area.aspx.cs" Inherits="area" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
 .vp1 {
            width:208px;
            height:100px;
        }
         .vp2 {
            width:208px;
            height:100px;
            margin-left:208px;
            margin-top:-100px;
        }
          .vp3 {
            width:208px;
            height:100px;
            margin-left: 416px;
            margin-top:-100px;
        }
     .con1 {
         text-align:center;
         width:104px;
         height:85px;
         margin-top:0px;
         border-right:dashed;
          border-left:solid;
         border-width:1px;
        font-size:15px;
        border-color:lightblue;
        
     }
     .con2 {
         text-align:center;
         width:104px;
         height:85px;
         margin-top:-85px;
         margin-left:104px;
         border-right:solid;
         border-width:1px;
        font-size:15px;
        border-color:lightblue;
     }
     .t {
         text-align:center;
         font-size:26px;
         font-weight:700;
         border-top:solid;
         border-color:lightblue;
         margin-top:4px;
         
     }
     .c {
         width: 624px;
         height: 700px;
     }
     .pic {
         width: 310px;
         height: 380px;
         text-align:center;
     }
     .text1 {
         width: 314px;
         height: 380px;
         margin-top:-380px;
         margin-left:310px;
         text-align:left;
         
     }
     .text2 {
         width: 624px;
         height: 320px;border-top:solid;
         border-color:lightblue;
         margin-top:4px;
     }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div>
        <img src="src/index_pic/area_img.png" />
        <div class="vp1">
            <div class="title">市内景点<br/></div>
            <div class="con1">
                故宫<br />
                什刹海<br />
                南锣鼓巷<br />
                雍和宫<br />
                798艺术区
            </div>

            <div class="con2">
                天安门<br />
                北海公园<br />
                簋街<br />
                天坛<br />
                王府井
            </div>

        </div>

        <div class="vp2">
            <div class="title">郊区景点</div>
            <div class="con1">
                颐和园<br />
                八达岭长城<br />
                香山公园<br />
                

            </div>



            <div class="con2">
                慕田峪长城<br />
                明十三陵
                <br />
            </div>
        </div>

        <div class="vp3">
            <div class="title">远郊区县</div>
            <div class="con1">
                龙庆峡<br />
                十渡<br />
                密云水库<br />
                云蒙山<br />
            </div>

            <div class="con2">
                蟒山森林公园<br />
                雾灵山<br />
                坝上草原<br />
            </div>
        </div>
        <div class="t">
            Title

        </div>

        <div class="c">
            <div class="pic">
                图图图图
            </div>
            <div class="text1">
                <p>【简介】：<br/></p>
                <p>【类型】：<br/></p>
                <p>【面积】：<br/></p>
                <p>【日均客流量】：<br/></p>
                <p>【地点】：<br/></p>
                <p>【乘车路线】：<br/></p>
                <p>【主要景区】：<br/></p>

            </div>

            <div class="text2">
                可图 可文字 可以是游玩过程 攻略等。
            </div>
        </div>

    </div>
</asp:Content>

