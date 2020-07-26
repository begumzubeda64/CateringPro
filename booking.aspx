<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="booking" %>

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
        }
   
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:100%">
<br /><br /><br /><br /><br /><br /><br /><br />
   <font size="3" style="font-family: georgia; color: White;"><b>

      
   
        <center><table class="style1">
            <tr>
                <td>
                <table class="style2">
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="600px" 
                                ImageUrl="~/bookingpic.png" Width="600px" /></td>
                    </tr>
                </table>
            </td>
                <td>
                    <table class="style2">
                        <tr>
                            <td><center>
                               <font size=5.5px> 
                                <br />
                                BOOKING</font><br /><br /><font color=yellow size=2px>Please fill all important fields.<br />
                                <br />
                                </font></center></td>
                        </tr>
                    </table>

                    <table class="style2">
                        <tr>
                            <td><center>
                                <br />
                                BOOKING ID<br />
                                <br />
                                <br />
                            </center></td>
                            <td><center>
                                <br />
                                <asp:Label ID="tbid" runat="server" Font-Bold="True" Font-Italic="False" 
                                    Font-Names="Georgia" Font-Size="12pt" ForeColor="White" 
                                    style="border-radius: 5px;"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;<br />
                                &nbsp;&nbsp;&nbsp;<br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </center></td>
                        </tr>
                        <tr>
                            <td><center>
                                <b>

      
   
   <font size="3" style="font-family: georgia; color: White;">

      
   
                                <font size="2px" style="font-family: georgia; color: Red;">*</font>USER NAME
                                <br />
                                <br />
                                </font>
    
                            </center></td>
                            <td><center>
                                <asp:Label ID="tbname" runat="server" Font-Bold="True" Font-Italic="False" 
                                    Font-Names="Georgia" Font-Size="12pt" ForeColor="White" 
                                    style="border-radius: 5px;"></asp:Label>
                                <br />
                                <br />
                           </center> </td>
                        </tr>
                        <tr>
                            <td><center>
                                <font size="2px" style="font-family: georgia; color: Red;">*</font>EVENT<br />
                                <br />
                                <br />
                                <br />
                            </center></td>
                            <td><center>
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                 <b>
                                
       <font size="4" style="font-family: georgia; color: White;">
                               
                                        <asp:DropDownList ID="dd_event" runat="server" AutoPostBack="True" 
                                            BackColor="White" BorderColor="Black" BorderStyle="Inset" BorderWidth="2px" 
                                            Font-Bold="True" Font-Names="Georgia" Font-Size="12pt" ForeColor="Black" 
                                            Height="31px" 
                                            style="border-radius: 5px;" Width="320px" onselectedindexchanged="dd_event_SelectedIndexChanged" 
                                            
                                            >
                                            <asp:ListItem>Select event</asp:ListItem>
                                           
                                        </asp:DropDownList>
       
                                        <asp:Label ID="lbl_vevent" runat="server" Font-Size="12pt" 
                                    ForeColor="Red"></asp:Label>
                                        <br />
                                        <br />
       
       </font>
                                </ContentTemplate>

                                </asp:UpdatePanel>
      
                           </center> </td>
                        </tr>
                        <tr>
                            <td><center>
                               <font size="2px" style="font-family: georgia; color: Red;">*</font> BOOKING DATE<br />
                                <br />
                                <br />
                                <br />
                          </center>  </td>
                            <td><center>
       <b>
                                
       <font size="4" style="font-family: georgia; color: White;">
                           
                            

                               
                            <asp:DropDownList ID="dd_day" runat="server" BackColor="White" 
                                BorderColor="Black" BorderStyle="Inset" BorderWidth="2px" 
                                            Font-Bold="True" Font-Names="Georgia" Font-Size="12pt" ForeColor="Black" 
                                            Height="31px" 
                                            style="border-radius: 5px;" Width="100px">
                            </asp:DropDownList>
&nbsp;<asp:DropDownList ID="dd_mo" runat="server" BackColor="White" 
                                BorderColor="Black" BorderStyle="Inset" BorderWidth="2px" 
                                            Font-Bold="True" Font-Names="Georgia" Font-Size="12pt" ForeColor="Black" 
                                            Height="31px" 
                                            style="border-radius: 5px;" Width="100px" 
                                    onselectedindexchanged="dd_mo_SelectedIndexChanged" AutoPostBack="True">
                            </asp:DropDownList>
&nbsp;<asp:DropDownList ID="dd_ye" runat="server" BackColor="White" 
                                BorderColor="Black" BorderStyle="Inset" BorderWidth="2px" 
                                            Font-Bold="True" Font-Names="Georgia" Font-Size="12pt" ForeColor="Black" 
                                            Height="31px" 
                                            style="border-radius: 5px;" Width="100px" AutoPostBack="True" onselectedindexchanged="dd_ye_SelectedIndexChanged" 
                                   >
                            </asp:DropDownList>
                            <asp:Label ID="lbl_date" runat="server" Font-Size="12pt" ForeColor="Red"></asp:Label>
                                <br />
                                <asp:Label ID="Label1" runat="server" Text="dd/mm/yyyy"></asp:Label>
       
                                <br />
       
                                <br />
       
       </font>
                            </center></td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td><center>
       <b>
                                
       <font size="4" style="font-family: georgia; color: White;">
                            <asp:Button ID="Button1" runat="server" Text="BOOK " BorderColor="White" 
                                    BorderStyle="Outset" BorderWidth="2px" CssClass="button" Font-Bold="True" 
                                    Font-Names="Georgia" Height="37px" style="border-radius: 5px;" 
                                B Width="204px" onclick="Button1_Click" />
       
                                <br />
       
                                <br />
       
       </font>
                           </center> </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td><center>
       <b>
                                
       <font size="4" style="font-family: georgia; color: White;">
                            <asp:Label ID="lbl_out" runat="server" Font-Size="12pt" ForeColor="Yellow"></asp:Label>
       
                                <br />
                                <br />
       
       </font>
                            </center></td>
                        </tr>
                    </table>

                    </td>
            </tr>
        </table> </center></font>
   
<br /><br /><br /><br /><br /><br /><br /><br />
    </div>
    
       <div style="background-color: #000000;height:200px"></div>
</asp:Content>

