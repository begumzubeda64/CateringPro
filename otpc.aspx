<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="otpc.aspx.cs" Inherits="otpc" %>

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
<br /><br /><br /><br /><br /><br /><br /><br />
   <font size="3" style="font-family: georgia; color: White;"><b>

      
   
      
   
      <center> <table class="style1">
           <tr>
               <td>
                   <table class="style2">
                       <tr>
                           <td><center>
                               <br />
                               <font size=5.5px>OTP</font><br />
                               <br />
                           </center></td>
                       </tr>
                   </table>

                   <table class="style3">
                       <tr>
                           <td><center>
                               SEND OTP TO</center></td>
                           <td><center><br />
                               <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                   <asp:ListItem>MOBILE</asp:ListItem>
                                   <asp:ListItem>E-MAIL</asp:ListItem>
                               </asp:RadioButtonList><br />
                          </center></td>
                           <td><center>
                               <br />
                               <asp:Label ID="lbl_con" runat="server"></asp:Label>
                               <br />
                               <asp:Label ID="lbl_email" runat="server"></asp:Label>
                               <br />
                               <br />
                          </center> </td>
                       </tr>
                       <tr>
                           <td>
                              </td>
                           <td><center>
                               <asp:TextBox ID="tb_otp" runat="server" BorderColor="Black" BorderStyle="Inset" 
                                   BorderWidth="2px" Font-="" Font-Bold="True" Font-Names="Georgia" 
                                   ForeColor="Black" Height="31px" Size="15pt" style="border-radius: 5px;" 
                                   Width="324px" AutoPostBack="True" ontextchanged="tb_otp_TextChanged"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                   ControlToValidate="tb_otp" Display="Dynamic" 
                                   ErrorMessage="Please enter the otp" ForeColor="Red"></asp:RequiredFieldValidator>
                               <br />
                               <br />
                           </center></td>
                           <td><center>
                               <b>

      
   
      
   
   <font size="3" style="font-family: georgia; color: White;">

      
   
      
   
                                <asp:Button ID="Button3" runat="server" BorderColor="#FFFFCC" 
                                    BorderStyle="Outset" BorderWidth="2px" CssClass="button" Font-Bold="True" 
                                    Font-Names="Georgia" Font-Size="Small" Height="39px"  
                                       style="border-radius: 5px;" Text="SEND OTP" Width="175px" 
                                   onclick="Button3_Click" CausesValidation="False" />

                               <br />
                               <asp:Label ID="lbl_verify" runat="server"></asp:Label>
                               </font>
                          </center> </td>
                       </tr>
                       <tr>
                           <td>
                               &nbsp;</td>
                           <td><center>
                               
                                <asp:Button ID="Button1" runat="server" BorderColor="#FFFFCC" 
                                    BorderStyle="Outset" BorderWidth="2px" CssClass="button" Font-Bold="True" 
                                    Font-Names="Georgia" Font-Size="Small" Height="39px"  
                                       style="border-radius: 5px;" Text="CHANGE PASSWORD" Width="175px" 
                                    CausesValidation="False" onclick="Button1_Click" />
                                   <br />
                                   <br />
                                   <asp:Panel ID="Panel1" runat="server">
                                   <font size="3" style="font-family: georgia; color: White;"><b>
                                   <asp:TextBox ID="tb_pass" runat="server" BorderColor="Black" 
                                       BorderStyle="Inset" BorderWidth="2px" Font-="" Font-Bold="True" 
                                       Font-Names="Georgia" ForeColor="Black" Height="31px" Size="15pt" 
                                       style="border-radius: 5px;" Width="324px"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                       ControlToValidate="tb_pass" Display="Dynamic" 
                                       ErrorMessage="Please enter the password" ForeColor="Red"></asp:RequiredFieldValidator>
                                    
                                   <br />
                                   <br />
                                   <asp:Button ID="Button2" runat="server" BorderColor="#FFFFCC" 
                                       BorderStyle="Outset" BorderWidth="2px" CssClass="button" Font-Bold="True" 
                                       Font-Names="Georgia" Font-Size="Small" Height="39px" 
                                       style="border-radius: 5px;" Text="SAVE PASSWORD" Width="175px" 
                                           onclick="Button2_Click" />
                                       <br />
                                   </b></font>
                               </asp:Panel>
                           </center></td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td>
                               &nbsp;</td>
                           <td><center>
   <font size="3" style="font-family: georgia; color: White;"><b>

      
   
      
   
                               <asp:Label ID="lbl_out" runat="server" ForeColor="Yellow"></asp:Label>
                               <br />
                               </font>
                           </center></td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                   </table>

               </td>
           </tr>
       </table></center>
    </font>
<br /><br /><br /><br /><br /><br /><br /><br />
    </div>
    <div style="background-color: #000000;height:200px"></div>
</asp:Content>

