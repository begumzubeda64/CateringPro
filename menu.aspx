<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 90%;
             border-radius:10px;
             background-color:Black;
           
             opacity:0.8;
        }
        .style2
        {
             width: 100%;
             border-bottom:1px solid white;
        }
        .style3
        {
             width: 100%;
             border:1px solid white;
              border-radius:10px;
              
        }
        .style4
        {
            
            width:100%;
            
        }
        
       
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="width:100%">
<br /><br /><br /><br /><br /><br /><br /><br />
     <font size="4" style="font-family: georgia; color: White;"><b>
       <center> <table class="style1">
            <tr>
                <td>
                    <table class="style2">
                        <tr>
                            <td><center>
                                <font size=5.5px>
                                <br />
                                MENU<br /><br />
                                </font></center></td>
                        </tr>
                    </table>

                    <table class="style4">
                        <tr>
                            <td><center>
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;CATEGORY<br />
                                </center></td>
                            <td><center>
                               
                                  <b>
       <font size="4" style="font-family: georgia; color: White;">
                                <br />
                                  <br />
                                    <br />

                                        <asp:DropDownList ID="dd_cat" runat="server" 
                                            BackColor="White" BorderColor="Black" BorderStyle="Inset" BorderWidth="2px" 
                                            Font-Bold="True" Font-Names="Georgia" Font-Size="12pt" ForeColor="Black" 
                                            Height="31px" 
                                            style="border-radius: 5px;" Width="320px" 
                                     AutoPostBack="True" 
                                            
                                            >
                                            <asp:ListItem>Select category</asp:ListItem>
                                            <asp:ListItem>All</asp:ListItem>
                                              <asp:ListItem>Punjabi</asp:ListItem>
                                    <asp:ListItem>Gujrati</asp:ListItem>
                                    <asp:ListItem>Rajasthani</asp:ListItem>
                                    <asp:ListItem>Maharashtrian</asp:ListItem>
                                     <asp:ListItem>Mughlai</asp:ListItem>
                                    <asp:ListItem>Chinese</asp:ListItem>
                                    <asp:ListItem>Italian</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                           
                                        </asp:DropDownList>
                                        <asp:Label ID="valid_cat" runat="server" Font-Size="12pt" ForeColor="Red"></asp:Label>
                                <br />
                                  <br />
                                    <br />
       
       </font>
                               
     
                           </center> </td>
                        </tr>
                    </table>
                   
                     <table class="style3">
                        <tr>
                            <td ><center>
                                
                                 <br/>
                     <br/>
                      <br/>
                                <b>
                                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                                    RepeatColumns="3" RepeatDirection="Horizontal">
                                  
                                    <ItemTemplate>
                                      <center>  <table class="style3">
                                            <tr>
                                                <td style="border: 1px solid #FFFFFF; background-color: #000000"><center >
                                                    <br />
                                                    <asp:Label ID="lbl_name" runat="server" Font-Size="16pt" ForeColor="White" 
                                                        Text='<%# Eval("mname") %>' Font-Bold="True"></asp:Label>
                                                    <br />
                                                    <br />
                                                </center></td>
                                            </tr>
                                            <tr>
                                                <td style="border: 1px solid #FFFFFF; "><center>
                                                    <asp:Image ID="Image1" runat="server" Height="350px" 
                                                        ImageUrl='<%# Eval("mimg") %>' Width="350px" />
                                               </center> </td>
                                            </tr>
                                            <tr>
                                                <td style="border: 1px solid #FFFFFF; "><center>
                                                    <br />
                                                    <asp:Label ID="Label1" runat="server" Text="Category: "></asp:Label><asp:Label ID="lbl_cat" runat="server" Text='<%# Eval("mcat") %>'></asp:Label>
                                                    <br />
                                                    <br />
                                                </center></td>
                                            </tr>
                                            <tr>
                                                <td style="border: 1px solid #FFFFFF;"><center>
                                                    <br />
                                                    <asp:Label ID="Label2" runat="server" Text="Price: "></asp:Label><asp:Label ID="lbl_price" runat="server" Text='<%# Eval("mprice") %>'></asp:Label>
                                                    <br />
                                                    <br />
                                                </center></td>
                                            </tr>
                                        </table></center>&nbsp;
                                        <br />
                                                            <br/>
                     <br/>
                      <br/>
                                    </ItemTemplate>
                                </asp:DataList>
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                     ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
                                     SelectCommand="SELECT [mname], [mimg], [mcat], [mprice] FROM [menu_tbl] WHERE ([mcat] = @mcat)">
                                     <SelectParameters>
                                         <asp:ControlParameter ControlID="dd_cat" Name="mcat" 
                                             PropertyName="SelectedValue" Type="String" />
                                     </SelectParameters>
                                 </asp:SqlDataSource>
                                 <br />
                                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                     ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
                                     SelectCommand="SELECT [mname], [mcat], [mprice], [mimg] FROM [menu_tbl]">
                                 </asp:SqlDataSource>
                                <br />
                              
                            </center></td>
                        </tr>
                    </table>

                </td>
            </tr>
        </table>
       </center></font>
        <br />
<br /><br /><br /><br /><br /><br /><br /><br />
    </div>
    </div>
    
    <div style="background-color: #000000;height:200px">
</div>

</asp:Content>

