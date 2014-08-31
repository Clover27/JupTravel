<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="type.aspx.cs" Inherits="cat" %>

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
         height:80px;
         margin-top:0px;
         line-height:20px;
        border-right:dashed;
          border-left:solid;
         border-width:1px;
        font-size:15px;
        border-color:lightblue;
     }
     .con2 {
         text-align:center;
         width:104px;
         height:80px;
         margin-top:-80px;
         margin-left:104px;
         line-height:20px;
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
         height: 320px;
         border-top:solid;
         border-color:lightblue;
         margin-top:4px;
     }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div>
        <img src="src/index_pic/type_img.png" />
        <div class="vp1">
            <div class="title"><br/></div>
            <div class="con1">

               
            </div>

            <div class="con2">

                
            </div>

        </div>

        <div class="vp2">
            <div class="title"></div>
            <div class="con1">


            </div>



            <div class="con2">

            </div>
        </div>

        <div class="vp3">
            <div class="title"></div>
            <div class="con1">

            </div>

            <div class="con2">

            </div>
        </div>
        <div class="t">
        </div>

        <div class="c">
            <div class="pic">
               
                <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#EFF3FB" />
                    <ItemTemplate>
                        <asp:HyperLink ID="lastLabel" runat="server" Text='<%# Eval("last") %>' ForeColor="Blue" NavigateUrl='<%#"type.aspx?id="+Eval("last") %>'/>
<br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Travel.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Classify] WHERE ([first] = @last)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="类型分类" Name="last" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
               
            </div>
            <div class="text1">


                <asp:DataList ID="DataList2" runat="server" DataKeyField="id" DataSourceID="SqlDataSource2">
                    <ItemTemplate>

                        <asp:HyperLink ID="nameLabel" runat="server" Text='<%# Eval("name") %>'  ForeColor="Blue" NavigateUrl='<%#"scene.aspx?id="+Eval("id") %>'/>
                        <br />
                  
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Travel.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [information] WHERE ([leixing] = @leixing)">
                    <SelectParameters>
                        <asp:SessionParameter Name="leixing" SessionField="lastclick" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>


            </div>

            <div class="text2">

            </div>
        </div>

    </div>
</asp:Content>

