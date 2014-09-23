<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="scene.aspx.cs" Inherits="scene" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .x {
            line-height:15px;

        }
        .xx {
            line-height:15px;
            font-size:small;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

   
    

    <asp:Label ID="Label1" runat="server" Text="" Font-Size="40px"  Font-Bold="true"></asp:Label><br /><br />
    <div style="width:344px; margin-left:280px;  height:400px;">
       <table style="width:100%; font-size:medium;"  border="1">
           <tr>
               <td><p class="x">【描&nbsp;述】</p></td>
               <td><p class="x"><asp:Label ID="Label3" runat="server" Text=""></asp:Label></p></td>
           </tr>
           <tr>
               <td><p class="x">【面&nbsp;积】</p></td>
               <td><p class="x"><asp:Label ID="Label4" runat="server" Text=""></asp:Label></p></td>
           </tr>
           <tr>
               <td><p class="xx">【日均客流量】</p></td>
               <td><p class="x"><asp:Label ID="Label5" runat="server" Text=""></asp:Label></p></td>
           </tr>
           <tr>
               <td><p class="x">【地&nbsp;点】</p></td>
               <td><p class="x"><asp:Label ID="Label6" runat="server" Text=""></asp:Label></p></td>
           </tr>
           <tr>
               <td><p class="x">【乘车路线】</p></td>
               <td><p class="xx"><asp:Label ID="Label7" runat="server" Text=""></asp:Label></p></td>
           </tr>
           <tr>
               <td><p class="x">【主要景区列表】</p></td>
               <td><p class="xx"><asp:Label ID="Label8" runat="server" Text=""></asp:Label></p></td>
           </tr>
       </table>


      
        

    </div>

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" style="height:400px;margin-top:-400px;">
        <ItemTemplate>
             <div style="height:100px; width:310px;">

        
            <asp:Image ID="urlLabel" runat="server" ImageUrl='<%# Eval("url") %>' Width="200px" Height="100px"/>
                
            <br />
        </ItemTemplate>
    </asp:DataList>
        
    
   
    <p style="font-size:larger; font-weight:bold;">评论</p><br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Travel.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [pic] WHERE ([name] = @name)">
        <SelectParameters>
            <asp:SessionParameter Name="name" SessionField="scenename" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DataList ID="DataList2" runat="server" DataKeyField="id" DataSourceID="SqlDataSource2" Width="622px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" GridLines="Both" CellSpacing="2" ForeColor="Black">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" />
        <ItemTemplate>
          <p style="font-size:small;"> 发布者： <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp


            时间：<asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' /></p>
            
            <br />
            <p style="text-align:left;">&nbsp&nbsp<asp:Label ID="contentLabel" runat="server" Text='<%# Eval("content") %>' /></p>
            

<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Travel.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [comment] WHERE ([fromid] = @fromid) ORDER BY [id] DESC">
        <SelectParameters>
            <asp:SessionParameter Name="fromid" SessionField="fromid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br /><br />
        <asp:Hyperlink ID="Hyperlink1" runat="server" Text="您未在线，评论请登陆"  NavigateUrl="~/Login.aspx" ForeColor="Blue"></asp:Hyperlink>
    <br /> <br />
    

    <asp:TextBox ID="TextBox1" runat="server" Height="104px" Width="499px"  TextMode="MultiLine" ></asp:TextBox>
    <br /> <br/>
    <asp:Button ID="Button1" runat="server" Text="发 表" OnClick="Button1_Click"  Font-Size="Large"/>
    <br/> <br/>
    </asp:Content>