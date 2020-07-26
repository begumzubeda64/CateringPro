<%@ Page Title="" Language="C#" MasterPageFile="~/admins.master" AutoEventWireup="true" CodeFile="orderadd2.aspx.cs" Inherits="orderadd2" %>

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
         .style3
        {
            width:100%;
            border-bottom:1px solid white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="{width:100%;}">
 <br /><br />
                                <br /><br />
                                <br /><br />
                                <br />
                                <br /><br />
                                <br /><br />
                               <br /><br />
                                <br /><br /><br />
    <font size="4" style="font-family: georgia; color: White;"><b>
    <center><table class="style1">
            <tr>
                <td>
                    <table class="style3">
                        <tr>
                            <td><center>
                               <font size=5.5px >
                                <br />
                                BILL REGISTRATION<br />
                                <br />
                                </font></center></td>
                        </tr>
                    </table>

                    <table class="style2">
                       
                        <tr>
                            <td><center>
                                <font size="2px" style="font-family: georgia; color: Red;">
                                <br />
                                *</font>&nbsp;TAX<br />
                                <br />
                                <br />
                            </center></td>
                            <td><center> 
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="tb_tax" runat="server" BorderColor="Black" 
                                    BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" 
                                    Font-Size="12pt" ForeColor="Black" Height="31px" style="border-radius: 5px;" 
                                    Width="200px" ></asp:TextBox>&nbsp;&nbsp; %
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                                    runat="server" ControlToValidate="tb_tax" Display="Dynamic" 
                                    ErrorMessage="Only numbers with two decimal places are allowed" 
                                    Font-Size="12pt" ForeColor="Red" ValidationExpression="^[0-9]+(\.[0-9]{1,2})?$"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="tb_tax" Display="Dynamic" 
                                    ErrorMessage="Please enter the amount" Font-Size="12pt" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                                    ControlToValidate="tb_tax" Display="Dynamic" 
                                    ErrorMessage="Tax must be between 5 to 20." Font-Size="12pt" ForeColor="Red" 
                                    MaximumValue="20" MinimumValue="5" Type="Double"></asp:RangeValidator>
                                <br />
                                <br />
                            </center></td>
                        </tr>
                         <tr>
                            <td><center>
                                <br />
                                DISCOUNT IF ANY<br />
&nbsp;&nbsp;<br />
                                <br />
                           </center> </td>
                            <td><center>
                                
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="tb_dis" runat="server" BorderColor="Black" BorderStyle="Inset" 
                                    BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" Font-Size="12pt" 
                                    ForeColor="Black" Height="31px" style="border-radius: 5px;" Width="200px" 
                                     ></asp:TextBox>
                                &nbsp;&nbsp; %<asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                                    runat="server" ControlToValidate="tb_dis" Display="Dynamic" 
                                    ErrorMessage="Only numbers with two decimal places are allowed" 
                                    Font-Size="12pt" ForeColor="Red" ValidationExpression="^[0-9]+(\.[0-9]{1,2})?$"></asp:RegularExpressionValidator>
                                   <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                     ControlToValidate="tb_dis" Display="Dynamic" 
                                     ErrorMessage="Discount must be between 0-90" Font-Size="12pt" ForeColor="Red" 
                                     MaximumValue="90" MinimumValue="0" Type="Double"></asp:RangeValidator>
                                   <br />
                                 <asp:Button ID="Button1" runat="server" BorderColor="White" 
                                    BorderStyle="Outset" CssClass="button" Font-Bold="True" Font-Names="Georgia" 
                                    Font-Size="12pt" Height="37px" 
                                    style="border-radius: 5px;" Text="CALCULATE" Width="204px" 
                                     onclick="Button1_Click" CausesValidation="False" 
                                     />
                                    
                                    <br />
                               
                                <br />
                               
                                   
                                
                                
                               
                               
                           </center> </td>
                        </tr>
                            <td><center>
                                TOTAL<br />
                                <br />
                                </center></td>
                            <td><center>
                                <asp:Label ID="lbl_tot" runat="server"></asp:Label>
                                <br />
                                <br />
                           </center> </td>
                        </tr>
                        <tr>
                            <td><center>
                                <font size="2px" style="font-family: georgia; color: Red;">*</font>&nbsp;AMOUNT PAYING IN ADVANCE<br />
                                <br />
                                <br />
                            </center></td>
                            <td><center>
                                
                                 <asp:TextBox ID="tb_amt" runat="server" BorderColor="Black" 
                                    BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" 
                                    Font-Size="12pt" ForeColor="Black" Height="31px" style="border-radius: 5px;" 
                                    Width="200px"   ></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                                    runat="server" ControlToValidate="tb_dis" Display="Dynamic" 
                                    ErrorMessage="Only numbers with two decimal places are allowed" 
                                    Font-Size="12pt" ForeColor="Red" ValidationExpression="^[0-9]+(\.[0-9]{1,2})?$"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="tb_amt" Display="Dynamic" 
                                    ErrorMessage="Please enter the amount" Font-Size="12pt" ForeColor="Red"></asp:RequiredFieldValidator>
                                 <asp:Label ID="lbl_apa" runat="server" Font-Size="12pt" ForeColor="Red"></asp:Label>
                                <br />
                                <asp:Button ID="Button3" runat="server" BorderColor="White" 
                                    BorderStyle="Outset" CssClass="button" Font-Bold="True" Font-Names="Georgia" 
                                    Font-Size="12pt" Height="37px" 
                                    style="border-radius: 5px;" Text="FIND UNPAID AMOUNT" Width="204px" onclick="Button3_Click" 
                                     />
                                 <br />
                                <br />
                                
                                
                               
                            </center></td>
                        </tr>
                       
                        <tr>
                            <td><center>
                                AMOUNT LEFT<br />
                                <br />
                                <br />
                                </center></td>
                           <td><center>
                                <asp:Label ID="lbl_left" runat="server"></asp:Label>
                                <br />
                                <br />
                                <br />
                            </center></td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td><center>
                                <asp:Button ID="Button2" runat="server" BorderColor="White" 
                                    BorderStyle="Outset" CssClass="button" Font-Bold="True" Font-Names="Georgia" 
                                    Font-Size="12pt" Height="37px" 
                                    style="border-radius: 5px;" Text="ADD TO BILL" Width="204px" 
                                    onclick="Button2_Click" />
                                <br />
                                <br />
                                <font size="4" style="font-family: georgia; color: yellow;">
                                <asp:Label ID="lbl_out" runat="server"></asp:Label>
                                </font></center>
                                <br />
                                <br />
                            </td>
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

    </div>
    <div style="background-color: #000000;height:200px"></div>
</asp:Content>

