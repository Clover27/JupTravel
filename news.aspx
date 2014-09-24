<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="news" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <%-- 请应用传参，调数据库来显示对应新闻信息--%>
    <br />
     <asp:Label ID="Label1" runat="server" Text='<%# Eval("title") %>' Font-Bold="true" style="font-size:larger; "></asp:Label>
     <br />
    
    <p>
        作者：
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        时间：
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>

    </p>
    
    <br /><br />

    <asp:TextBox ID="TextBox1" runat="server" BackColor="#DEF9FA" BorderStyle="None" Height="645px" ReadOnly="True" TextMode="MultiLine" Width="452px"  Font-Size="Large"></asp:TextBox>
    <br />
    <br /><br /><br /><br />
    <br /><br />

    <br />
    <br /> <br />
    

    </asp:Content>

