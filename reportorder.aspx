<%@ Page Title="" Language="C#" MasterPageFile="~/admins.master" AutoEventWireup="true" CodeFile="reportorder.aspx.cs" Inherits="reportorder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
        .style1
        {
            width: 90%;
            background-color:Black;
            border-radius:10px;
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
        }
   
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div style="width:100%">
 <br />
                                <br /><br />
                                <br /><br />
                                <br /><br />
                                <br />
                                <br /><br />
                                <br /><br />
                               <br /><br />
                                <br /><br />
   <font size="3" style="font-family: georgia; color: White;"><b>

    
       
      
        <center><table class="style1">
            <tr>
                <td>
                    <table class="style2">
                        <tr>
                            <td><center>
                                <br />
                                <font size=5.5px> ORDER REPORT</font><br /><br />
                                </center></td>
                        </tr>
                    </table>

                   

                    <table class="style3">
                        <tr>
                         <td><center>
                                <b>
     <font size="4" style="font-family: georgia; color: White;"><b>
                                <asp:Button ID="Button1" runat="server" BorderColor="#FFFFCC" 
                                    BorderStyle="Outset" BorderWidth="2px" CssClass="button" Font-Bold="True" 
                                    Font-Names="Georgia" Font-Size="Small" Height="39px"  
                                    style="border-radius: 5px;" Text="TODAY" Width="175px" onclick="Button1_Click"/>
                           &nbsp;
   <font size="3" style="font-family: georgia; color: White;">
     <font size="4" style="font-family: georgia; color: White;">
                                <asp:Button ID="Button2" runat="server" BorderColor="#FFFFCC" 
                                    BorderStyle="Outset" BorderWidth="2px" CssClass="button" Font-Bold="True" 
                                    Font-Names="Georgia" Font-Size="Small" Height="39px"  
                                    style="border-radius: 5px;" Text="WEEKLY" Width="175px" 
                                    onclick="Button2_Click"/>
                                <br />
                                <br />
   <font size="3" style="font-family: georgia; color: White;">
     <font size="4" style="font-family: georgia; color: White;">
                                <asp:Button ID="Button3" runat="server" BorderColor="#FFFFCC" 
                                    BorderStyle="Outset" BorderWidth="2px" CssClass="button" Font-Bold="True" 
                                    Font-Names="Georgia" Font-Size="Small" Height="39px"  
                                    style="border-radius: 5px;" Text="MONTHLY" Width="175px" 
                                    onclick="Button3_Click"/>
                           &nbsp;
   <font size="3" style="font-family: georgia; color: White;">
     <font size="4" style="font-family: georgia; color: White;">
                                <asp:Button ID="Button4" runat="server" BorderColor="#FFFFCC" 
                                    BorderStyle="Outset" BorderWidth="2px" CssClass="button" Font-Bold="True" 
                                    Font-Names="Georgia" Font-Size="Small" Height="39px"  
                                    style="border-radius: 5px;" Text="YEARLY" Width="175px" 
                                    onclick="Button4_Click"/>
                                      
       </font>
                   
       </font>
                   
       </font>
                           </center></td>
                            <td><center>
                                
                                 <br /> <br />
                                <asp:Panel ID="Panel2" runat="server">
                                <b>
   <font size="3" style="font-family: georgia; color: White;">
                                
       <font size="4" style="font-family: georgia; color: White;">
                               
                                        <asp:DropDownList ID="dd_s1" runat="server" AutoPostBack="True" 
                                            BackColor="White" BorderColor="Black" BorderStyle="Inset" BorderWidth="2px" 
                                            Font-Bold="True" Font-Names="Georgia" Font-Size="12pt" ForeColor="Black" 
                                            Height="31px" 
                                            style="border-radius: 5px;" Width="320px" onselectedindexchanged="dd_s1_SelectedIndexChanged"  
                                           
                                            >
                                            
                                           
                                        </asp:DropDownList>
       
       </font>
           
       </font>
                                 </asp:Panel>
       
                                 </b>
                                <asp:Panel ID="Panel1" runat="server">
                                 <b>
                                
       <font size="4" style="font-family: georgia; color: White;">
                               
                                        <asp:DropDownList ID="dd_s" runat="server" AutoPostBack="True" 
                                            BackColor="White" BorderColor="Black" BorderStyle="Inset" BorderWidth="2px" 
                                            Font-Bold="True" Font-Names="Georgia" Font-Size="12pt" ForeColor="Black" 
                                            Height="31px" 
                                            style="border-radius: 5px;" Width="320px" onselectedindexchanged="dd_s_SelectedIndexChanged" 
                                           
                                            >
                                            
                                           
                                        </asp:DropDownList>
       
       </font>
                                 </b>
                                </asp:Panel>

      

                                  <br /> <br />
                                    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                                        ForeColor="Black" GridLines="Vertical">
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <FooterStyle BackColor="#CCCCCC" />
                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#808080" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#383838" />
                                    </asp:GridView>
                                 <br />
                                 <asp:Label ID="lbl_count" runat="server" ForeColor="Yellow"></asp:Label>
                                <br />
                                <br />
                                <br />
                                
                           
                           </center> </td>
                          
                        </tr>
                    </table>

                   
                    <table class="style3">
                        <tr>
                            <td><center>
                                <br />
                                <br />
                                <br />
                                <br />
                           </center> </td>
                        </tr>
                    </table>

                </td>
            </tr>
        </table></center>
           
       </font>
        <br />
                                <br /><br />
                                <br /><br />
                                <br /><br />
                                <br />
                                <br /><br />
                                <br /><br />
                               <br /><br />
                                <br /><br />
    </div>
    <div style="background-color: #000000;height:200px"></div>
</asp:Content>

