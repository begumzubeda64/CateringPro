<%@ Page Title="" Language="C#" MasterPageFile="~/admins.master" AutoEventWireup="true" CodeFile="ahome.aspx.cs" Inherits="ahome" %>

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
                               <font size=5.5px> ADMIN</font><br /><br />
                                </center></td>
                        </tr>
                    </table>

                   

                    <table class="style3">
                        <tr>
                         <td><center>
                                <b>
     <font size="4" style="font-family: georgia; color: White;">
                                <br />
                                <br />
                                <asp:Button ID="Button1" runat="server" BorderColor="#FFFFCC" 
                                    BorderStyle="Outset" BorderWidth="2px" CssClass="button" Font-Bold="True" 
                                    Font-Names="Georgia" Font-Size="Small" Height="39px"  
                                    style="border-radius: 5px;" Text="ORDERS" Width="175px" PostBackUrl="~/vieworder.aspx" 
                                    />
                           &nbsp;
   <font size="3" style="font-family: georgia; color: White;">
     <font size="4" style="font-family: georgia; color: White;">
                                <asp:Button ID="Button2" runat="server" BorderColor="#FFFFCC" 
                                    BorderStyle="Outset" BorderWidth="2px" CssClass="button" Font-Bold="True" 
                                    Font-Names="Georgia" Font-Size="Small" Height="39px"  
                                    style="border-radius: 5px;" Text="QUERIES" Width="175px" 
                                     PostBackUrl="~/response.aspx" 
                                    />
                                <br />
                                <br />
                                <asp:Label ID="Label1" runat="server" Font-Size="12pt" ForeColor="Yellow"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" 
                                    Font-Size="12pt" ForeColor="Yellow"></asp:Label>
                                <br />
                                <br />
   <font size="3" style="font-family: georgia; color: White;">
     <font size="4" style="font-family: georgia; color: White;">
                                <asp:Button ID="Button3" runat="server" BorderColor="#FFFFCC" 
                                    BorderStyle="Outset" BorderWidth="2px" CssClass="button" Font-Bold="True" 
                                    Font-Names="Georgia" Font-Size="Small" Height="39px"  
                                    style="border-radius: 5px;" Text="BOOKINGS" Width="175px" PostBackUrl="~/modifybookings.aspx" 
                                    />
                           &nbsp;
   <font size="3" style="font-family: georgia; color: White;">
     <font size="4" style="font-family: georgia; color: White;">
                                <asp:Button ID="Button4" runat="server" BorderColor="#FFFFCC" 
                                    BorderStyle="Outset" BorderWidth="2px" CssClass="button" Font-Bold="True" 
                                    Font-Names="Georgia" Font-Size="Small" Height="39px"  
                                    style="border-radius: 5px;" Text="NEW ADMIN" Width="175px" PostBackUrl="~/asignupp.aspx" 
                                    />
                                      
                                <br />
                                <br />
                                      
       </font>
                                <asp:Label ID="Label3" runat="server" Font-Size="12pt" ForeColor="Yellow"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
       </font>
                   
       </font>
                          
                          
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

