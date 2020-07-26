<%@ Page Title="" Language="C#" MasterPageFile="~/admins.master" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="order" %>

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
            height: 25px;
        }
        .style4
        {
            width: 100%;
            border-right:1px solid white;
        }
        .style5
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="width:100%">
     <font size="4" style="font-family: georgia; color: White;"><b>
      <br />
    <br />
         <br />
         <br />
          <br />
         <br />
    <br />
    <br />
         <br />
         <br />
         <br />
         <br /><br />
         <br />
       <center><table class="style1">
            <tr>
                <td>
                    <table class="style2">
                        <tr>
                            <td class="style3">
                            <center>
                                <br />

                                <font size="5.5px">ORDER REGISTRATION</font><br />
                                <br />
                            </center></td>
                        </tr>
                    </table>

                    <table class="style5">
                        <tr>
                            <td> <br /> <br />
                            
                                <table class="style4">
                                    <tr>
                                        <td><center>
                                            <br />
                                            NEW CUSTOMER&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </center></td>
                                    </tr>
                                    <tr>
                                        <td><center>
                                            <font size=3 color=yellow>You can make order for your non registered customer by clicking on below button.                                        <br /></font></center></td>
                                    </tr>
                                    <tr>
                                        <td><center>
                                             <br />
                                             <asp:Button ID="Button2" runat="server" BorderColor="White" 
                                    BorderStyle="Outset" BorderWidth="2px" CssClass="button" Font-Bold="True" 
                                    Font-Names="Georgia" Font-Size="Small" Height="42px" 
                                    style="border-radius: 5px;" Text="ADD NEW ORDER" Width="217px" PostBackUrl="~/orderadd.aspx" 
                                    />
                                             <br />
                                       </center> </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                            <td> <br /> <br />
                                <table class="style5">
                                    <tr>
                                        <td><center>
                                            <br />
                                            EXISTING CUSTOMER<br />
                                            <br />
                                       </center> </td>
                                    </tr>
                                    <tr>
                                        <td><center>

     <font size="4" style="font-family: georgia; color: White;">
                                            <font size=3 color=yellow><b>
                                            You can 
                                            make order for your registered customer by clicking on below button.
                                            <br />
                                            </font>
        </font>
        
                                       </center> </td>
                                    </tr>
                                    <tr>
                                        <td><center>
                                            <br />
                                            <asp:Button ID="Button1" runat="server" BorderColor="White" 
                                    BorderStyle="Outset" BorderWidth="2px" CssClass="button" Font-Bold="True" 
                                    Font-Names="Georgia" Font-Size="Small" Height="42px" 
                                    style="border-radius: 5px;" Text="ADD NEW ORDER" Width="217px" PostBackUrl="~/eorderadd.aspx" 
                                     />
                                            <br />
                                        </center></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                
                            </td>
                        </tr>
                    </table>
                    <br />
                                 <br />
                                  <br />
                </td>
            </tr>
        </table></center>
        </font>
        
    <br />
         <br />
         <br />
    <br />
         <br />
         <br />
            <br />
         <br />
         <br />
         <br /><br />
         <br />
    </div>
    <div style="background-color: #000000;height:200px">
</div>
</asp:Content>

