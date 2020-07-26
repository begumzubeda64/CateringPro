<%@ Page Title="" Language="C#" MasterPageFile="~/admins.master" AutoEventWireup="true" CodeFile="branch.aspx.cs" Inherits="branch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 90%;
             
             border-radius:10px;
             opacity:0.8;
            background-color:Black;
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
<br /><br />
                                <br /><br />
                                <br /><br />
                                <br />
                                <br /><br />
                                <br /><br />
                               <br /><br />
                                <br /><br /><br />
   <font size="3" style="font-family: georgia; color: White;"><b>
       <center> <table class="style1">
            <tr>
                <td>
                    <table class="style2">
                        <tr>
                            <td><center>
                                <font size=5.5px>
                                <br />
                                BRANCH REGISTRATION<br />
                                <br />
                                </font></center></td>
                        </tr>
                    </table>

                    <table class="style3">
                        <tr>
                            <td><center>
                                <br />
                                BRANCH ID<br />
                                <br />
                            </center></td>
                            <td><center>
                                <br />
                                <asp:Label ID="tbid" runat="server" Font-Bold="True" Font-Italic="False" 
                                    Font-Names="Georgia" Font-Size="12pt" ForeColor="White" 
                                    style="border-radius: 5px;"></asp:Label>
                                <br />
                                <br />
                           </center> </td>
                        </tr>
                        <tr>
                            <td><center>
                                BRANCH NAME</center></td>
                            <td><center>
                                <asp:TextBox ID="tb_branch" runat="server" BorderColor="Black" BorderStyle="Inset" 
                                    BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" Font-Overline="False" 
                                    Font-Size="15pt" ForeColor="black" Height="31px" 
                                    style="border-radius: 5px;" Width="320px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="tb_branch" Display="Dynamic" 
                                    ErrorMessage="Please enter the branch name" Font-Size="12pt" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                            </center></td>
                        </tr>
                       
                    </table>

                    <table class="style3">
                        <tr>
                            <td><center>
       <b>
       <font size="3" style="font-family: georgia; color: White;">
                                <asp:Button ID="Button1" runat="server" BorderColor="#FFFFCC" 
                                    BorderStyle="Outset" BorderWidth="2px" CssClass="button" Font-Bold="True" 
                                    Font-Names="Georgia" Font-Size="Small" Height="46px" 
                                    style="border-radius: 5px;" Text="ADD BRANCH" Width="222px" onclick="Button1_Click" 
                                     />
    
                                <br />
    
    </font>
                            </center></td>
                        </tr>
                    </table>

                    <table class="style3">
                        <tr>
                            <td><center>
       <b>
                                <font color=yellow size=2px style="font-family: georgia; color: #FFFF00"><asp:Label ID="lbl_out" runat="server" 
                                    Font-Bold="True" Font-Italic="False" 
                                    Font-Names="Georgia" Font-Size="12pt"></asp:Label>
                                <br /><br />
<br />
<br />
                                </font>
                           </center> </td>
                        </tr>
                    </table>

                </td>
            </tr>
        </table></center>
   
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

