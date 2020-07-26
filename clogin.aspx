<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="clogin.aspx.cs" Inherits="clogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <style type="text/css">
        
        .style1
        {
            background-color:Black;
           
            height: 301px;
            
             margin:50px 50px 50px 50px;
             border-radius:10px;
             opacity:0.8;
        }
        .style3
        {
            
            
        }
        .style5
        {
            height: 31px;
        }
        .style6
        {
           
           
            border-left:1px solid white;
           
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="width:100%;"  >
<br /><br /><br /><br /><br /><br />
     <font size="4" style="font-family: georgia; color: White;"><b>
      <center> <table class="style1" align="center">
            <tr>
                <td>
                   
                    <br />
                    <br />
                    <br />
                    <br />
                    <table class="style3" align="center">
                        <tr>
                            <td class="style5">
                            <center>
                               <font size=5.5px> NEW CUSTOMER</font></td>
                               </center>
                        </tr>
                        <tr>
                            <td><center>
                                <font size="2" style="font-family: georgia; color: Yellow;">
                                <br />
                                By creating an account with our catering service view and track your orders in your account and more.<br />
                                <br />
                                </font></center>
                            </td>
                        </tr>
                        <tr>
                    
                            <td>
                            <center>
                                <asp:Button ID="Button2" runat="server" BorderColor="#FFFFCC" 
                                    BorderStyle="Outset" BorderWidth="2px" CausesValidation="False" 
                                    CssClass="button" Font-Bold="True" Font-Names="Georgia" Font-Size="Small" 
                                    Height="39px"  style="border-radius: 5px;" Text="CREATE AN ACCOUNT" Width="175px" OnClick="Button2_Click" />
                               </center>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                    <br />
                   
                   
                </td>
                <td>
                    <table class="style6">
                        <tr>
                            <td>
                                 
                               <center> <font size=5.5px> REGISTERED CUSTOMER</font></center>
                                &nbsp;<br />
                              
                                </td>
                                
                        </tr>
                        <tr>
                        <td>
                          <center> <font size="2" style="font-family: georgia; color: Yellow;">
                              <asp:Label ID="Label1" runat="server" Text="If you have an account with us, please "></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <center>login.</center><br /></font> </center> </td></tr>
                        <tr>
                            <td> <center>
                                  <font size="2px" style="font-family: georgia; color: Red;">*</font> <font size="2px" style="font-family: georgia; color: White;">EMAIL ID 
                                  <br />
                                  <br />
                                  <asp:TextBox ID="tb_id" runat="server" BorderColor="Black" BorderStyle="Inset" 
                                      BorderWidth="2px" Font-="" Font-Bold="True" Font-Names="Georgia" 
                                      ForeColor="Black" Height="31px" Size="15pt" style="border-radius: 5px;" Width="324px"></asp:TextBox>
                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                      ControlToValidate="tb_id" Display="Dynamic" 
                                      ErrorMessage="Invalid E-mail" ForeColor="Red" 
                                      ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                      ControlToValidate="tb_id" Display="Dynamic" ErrorMessage="Please enter the id" 
                                      ForeColor="Red"></asp:RequiredFieldValidator>
                                  <br />
                                  <br />
                                  </font></center>
                                  </td>
                        </tr>
                        <tr>
                            <td> <center>
                                <font size="2px" style="font-family: georgia; color: Red;">*</font><font 
                                    size="2px" style="font-family: georgia; color: White;"> PASSWORD<br />
                                <br />

                                     
                                    <asp:TextBox ID="tb_pass" runat="server" BorderColor="Black" 
                                    BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" 
                                    Font-Overline="False" Font-Size="15pt" ForeColor="Black" Height="31px" style="border-radius: 5px;" TextMode="Password" Width="324px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="tb_pass" Display="Dynamic" 
                                    ErrorMessage="Please enter the password" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                <br />
                                    </font></center></td>
                        </tr>
                        <tr>
                            <td> <center>
                                <asp:Button ID="Button1" runat="server" BorderColor="#FFFFCC" 
                                    BorderStyle="Outset" BorderWidth="2px" CssClass="button" Font-Bold="True" 
                                    Font-Names="Georgia" Font-Size="Small" Height="39px"  style="border-radius: 5px;" Text="LOGIN" Width="175px"  OnClick="Button1_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="2px" style="font-family: georgia; color: Red;"><asp:LinkButton
                                        ID="LinkButton1" runat="server" CausesValidation="False" 
                                    Font-Size="Small" ForeColor="Red" onclick="LinkButton1_Click">Forgot Password?</asp:LinkButton>        </font><br />
                                <font color="red" size=2><asp:Label ID="lbl_out" runat="server" ></asp:Label></font>
                                </center>
                            </td>
                        </tr>
                    </table>
                  
                </td>
            </tr>
        </table></center>
   </center>
   <br /><br /><br /><br /><br /><br />
 
</div>
<div style="background-color: #000000;height:200px">
</div>
</asp:Content>

