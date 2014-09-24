<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserInfo.aspx.cs" Inherits="UserInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <p style="font-size:25px;font-weight:bold">个&nbsp人&nbsp信&nbsp息</p>
    用 户 名:
    <asp:Label ID="UserNameLabel" runat="server" Text=""></asp:Label>
    <br/>
    <br/>
    用户级别:
    <asp:Label ID="UserLevel" runat="server" Text=""></asp:Label>
    <br/>
    <br/>
    <asp:Button ID="ModiftPassWord" runat="server" Text="修改密码" OnClick="ModiftPassWord_Click" CssClass="blue"/> &nbsp &nbsp
        <asp:Button ID="Logout" runat="server" Text="注 销" OnClick="Logout_Click" CssClass="blue"/> &nbsp &nbsp
    <%--以下按钮仅管理员可见--%>
        <asp:Button ID="UserManage" runat="server" Text="管 理" OnClick="UserManage_Click" CssClass="blue"/> &nbsp &nbsp
</asp:Content>

