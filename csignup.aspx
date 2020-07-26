<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="csignup.aspx.cs" Inherits="csignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    
   
    
    <style type="text/css">
        .style1
        {
          width:90%;
             border-radius:10px;
             opacity:0.8;
            background-color:Black;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
             width: 100%;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div style="width:100%;">
   <br /><br /><br /><br /><br /><br /><br /><br />
       <font size="3" style="font-family: georgia; color: White;"><b>
      <center> <table class="style1">
        
            <tr>
                <td>
                    <table class="style3">
                        <tr>
                            <td><center> <br /><br /><br /><br /><font size=5.5px>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REGISTRATION FORM</font>
                                &nbsp;<br /><br />
                                <font color=yellow size=2px>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please fill all the 
                                important fields.</font>
                                <br /><br /><br /></center>
                            </td>
                        </tr>
                    </table>

                    <table class="style2">
                        <tr>
                            <td>
                               <center> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; USER-ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <br />
                                <br /></center>
                            </td>
                            <td><center>
                                &nbsp;<asp:Label ID="tbid" runat="server" Font-Bold="True" Font-Italic="False" 
                                    Font-Names="Georgia" Font-Size="12pt" ForeColor="White" 
                                    style="border-radius: 5px;"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</center></td>
                        </tr>
                        <tr>
                            <td><center>
                               <font size="2px" style="font-family: georgia; color: Red;">*</font>NAME<br />
                                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                            </center></td>
                            <td><center>
                                <asp:TextBox ID="tbname" runat="server" BorderColor="Black" BorderStyle="Inset" 
                                    BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" Font-Size="15pt" 
                                    ForeColor="Black" Height="31px" style="border-radius: 5px;" Width="320px" 
                                    Wrap="False"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="tbname" Display="Dynamic" 
                                    ErrorMessage="Only Characters are allowed" ForeColor="Red" 
                                    ValidationExpression="[a-z/A-Z/\s]*" Font-Size="12pt"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="tbname" Display="Dynamic" 
                                    ErrorMessage="Please enter the name" ForeColor="Red" Font-Size="12pt"></asp:RequiredFieldValidator>
                                                 <br/> <br/> </center></td>
                        </tr>
                        <tr>
                            <td><center>
                                <font size="2px" style="font-family: georgia; color: Red;">*</font>ADDRESS<br />
                                <br /></center>
                            </td>
                            <td><center>
                                <asp:TextBox ID="tbadd" runat="server" BorderColor="Black" BorderStyle="Inset" 
                                    BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" Font-Size="15pt" 
                                    ForeColor="Black" Height="61px" style="border-radius: 5px;" 
                                    TextMode="MultiLine" Width="320px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="tbadd" Display="Dynamic" 
                                    ErrorMessage="Please enter the address" ForeColor="Red" Font-Size="12pt"></asp:RequiredFieldValidator>
                          <br/>  </center> </td>
                        </tr>
                        <tr>
                            <td><center>
                               <font size="2px" style="font-family: georgia; color: Red;">*</font> CONTACT NO<br />
                                <br />
                                <br />
                            </center></td>
                            <td><center>
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Georgia" 
                                    Font-Size="12pt" ForeColor="White" Text="+49"></asp:Label>
                                &nbsp;&nbsp;&nbsp;<asp:TextBox ID="tbcon" runat="server" BorderColor="Black" 
                                    BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" 
                                    Font-Size="15pt" ForeColor="Black" Height="31px" style="border-radius: 5px;" 
                                    Width="275px"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="tbcon" Display="Dynamic" 
                                    ErrorMessage="Enter valid contact no." ForeColor="Red" 
                                    ValidationExpression="[1-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]" 
                                    Font-Size="12pt"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="tbcon" Display="Dynamic" 
                                    ErrorMessage="Please Enter Contact no." ForeColor="Red" Font-Size="12pt"></asp:RequiredFieldValidator>
                           </center> </td>
                        </tr>
                        <tr>
                            <td><center>
                               <font size="2px" style="font-family: georgia; color: Red;">*</font> E-MAIL ID<br />
                                <br />
                                <br /></center>
                            </td>
                            <td><center>
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                <asp:TextBox ID="tb_email" runat="server" BorderColor="Black" 
                                    BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" 
                                    Font-Size="15pt" ForeColor="Black" Height="31px" style="border-radius: 5px;" 
                                    Width="320px" AutoPostBack="True" ontextchanged="tb_email_TextChanged"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="tb_email" Display="Dynamic" 
                                    ErrorMessage="Please Enter E-mail id" ForeColor="Red" Font-Size="12pt"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                    ControlToValidate="tb_email" Display="Dynamic" 
                                    ErrorMessage="Enter valid e-mail" ForeColor="Red" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                    Font-Size="12pt"></asp:RegularExpressionValidator>
                                    <asp:Label ID="valid_email" runat="server" Font-Size="12pt" ForeColor="Red"></asp:Label>
                                </ContentTemplate>
                                </asp:UpdatePanel>
                                
                            </center></td>
                        </tr>
                        <tr>
                            <td><center>
                               <font size="2px" style="font-family: georgia; color: Red;">*</font> PASSWORD<br />
                                <br />
                                <br /></center>
                            </td>
                            <td><center>
                                <asp:TextBox ID="tbpass" runat="server" BorderColor="Black" BorderStyle="Inset" 
                                    BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" Font-Overline="False" 
                                    Font-Size="15pt" ForeColor="black" Height="31px" style="border-radius: 5px;" 
                                    TextMode="Password" Width="320px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="tbpass" Display="Dynamic" 
                                    ErrorMessage="Please enter the password" ForeColor="Red" Font-Size="12pt"></asp:RequiredFieldValidator>
                            </center></td>
                        </tr>
                       
                    </table>

                    <table class="style2">
                        <tr>
                            <td><center>
                                <asp:Button ID="Button1" runat="server" BorderColor="#FFFFCC" 
                                    BorderStyle="Outset" BorderWidth="2px" CssClass="button" Font-Bold="True" 
                                    Font-Names="Georgia" Font-Size="Small" Height="46px" 
                                    style="border-radius: 5px;" Text="REGISTER" Width="222px" 
                                    onclick="Button1_Click" />
                                    <br />
                                <br />
                                    </center>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            <center>
                                <font color=yellow size=2px><asp:Label ID="lbl_out" runat="server" 
                                    Font-Bold="True" Font-Italic="False" 
                                    Font-Names="Georgia" Font-Size="12pt"></asp:Label></font><br /><br /><br /><br />
                            </center></td>
                        </tr>
                    </table>

                </td>
            </tr>
        </table></center>
    
    </font><br /><br /><br /><br /><br /><br /><br /><br />
    </div>
<div style="background-color: #000000;height:200px">
</div>
</asp:Content>

