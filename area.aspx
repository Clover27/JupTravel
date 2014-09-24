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
         height: 380px;
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
        

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Travel.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [information] WHERE ([diyu] = @diyu)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="郊区景点" Name="diyu" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
                

            </div>



            
        
              
                  
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Travel.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [information] WHERE ([diyu] = @diyu)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="远郊区县" Name="diyu" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                
                  
        
      

        <div class="c">
           
                <div style="align-content:center;text-align:center;">
                <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource4" Font-Size="Larger"  style="line-height:50px; align-content:center; align-items:center;  " BackColor="#CCCCCC" BorderColor="#999999"  CellPadding="4" CellSpacing="2" ForeColor="Black" GridLines="Both"  RepeatColumns="3" Width="622px" Height="145px">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="White" />
                    <ItemTemplate >
                        <asp:HyperLink ID="lastLabel" style="align-content:center;text-align:center" runat="server" Text='<%# Eval("last") %>' ForeColor="Black" NavigateUrl='<%#"area.aspx?id="+Eval("last") %>' />
                        &nbsp;
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                    </div>

                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Travel.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [last] FROM [Classify] WHERE ([first] = @first)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="地域分类" Name="first" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                
                
            
             

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Travel.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [information] WHERE ([diyu] = @diyu)">
                    <SelectParameters>
                        <asp:SessionParameter Name="diyu" SessionField="lastclick" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="621px" DataKeyField="id" Font-Size="Medium" style="line-height:30px;" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Both"  RepeatColumns="5" Height="47px" >
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <ItemStyle ForeColor="#000066" />
                    <ItemTemplate>
                        <asp:HyperLink ID="nameLabel" runat="server" Text='<%# Eval("name") %>' ForeColor="Black" NavigateUrl='<%#"scene.aspx?id="+Eval("id") %>'/>
                         
                        <br />
                        
                        
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
             

           

            
        </div>

 
</asp:Content>

