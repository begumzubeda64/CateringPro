<%@ Page Title="" Language="C#" MasterPageFile="~/admins.master" AutoEventWireup="true" CodeFile="alogin.aspx.cs" Inherits="alogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
          width:90%;
             border-radius:10px;
             opacity:0.8;
            background-color:Black;
        }
        .style3
        {
             width: 100%;
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
    <br /><br />
                                <br /><br />
                                <br /><br />
                                <br />
                                <br /><br />
                                <br /><br />
                               <br /><br />
                                <br /><br /><br />
                   
<div  style="width:100%;">

 <center>
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
                               <font size=5.5px> NEW ADMIN</font></td>
                               </center>
                        </tr>
                        <tr>
                            <td><center>
                                <font size="2" style="font-family: georgia; color: Yellow;">
                                <br />
                                For adding new admin the already registered admin must login first.<br />
                                <br />
                                </font></center>
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
                                 
                               <center> <font size=5.5px> 
                                   <br />
                                   REGISTERED ADMIN</font></center>
                                &nbsp;<br />
                              
                                </td>
                                
                        </tr>
                        <tr>
                        <td>
                          <font size="2" style="font-family: georgia; color: Yellow;">
                              <center> <asp:Label ID="Label1" runat="server" Text="If you have an account, please login."></asp:Label>  </center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br /></font> </td></tr>
                        <tr>
                            <td> <center>
                                  <font size="2px" style="font-family: georgia; color: Red;">*</font> <font size="2px" style="font-family: georgia; color: White;">USER ID 
                                  <br />
                                  <br />
                                  <asp:TextBox ID="tb_id" runat="server" BorderColor="Black" BorderStyle="Inset" 
                                      BorderWidth="2px" Font-="" Font-Bold="True" Font-Names="Georgia" 
                                      ForeColor="Black" Height="31px" Size="15pt" style="border-radius: 5px;" Width="324px"></asp:TextBox>
                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                      ControlToValidate="tb_id" Display="Dynamic" 
                                      ErrorMessage="Only Numbers are allowed" ForeColor="Red" 
                                      ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
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
                                    Font-Names="Georgia" Font-Size="Small" Height="39px"  
                                    style="border-radius: 5px;" Text="LOGIN" Width="175px" 
                                    onclick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="2px" style="font-family: georgia; color: Red;"><br />
                                        <asp:Label ID="lbl_out" runat="server"></asp:Label>
                                <br />
                                <br />
                                </font><br /></center>
                            </td>
                        </tr>
                    </table>
                  
                </td>
                
            </tr>
        </table></center>
   </center>
       <br /><br />
                                <br /><br />
                                <br /><br />
                                <br />
                                <br /><br />
                                <br /><br />
                               <br /><br />
                                <br /><br /><br />
</div>
<div style="background-color: #000000;height:200px">
</div>
</asp:Content>

