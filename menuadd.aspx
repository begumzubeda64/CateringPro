<%@ Page Title="" Language="C#" MasterPageFile="~/admins.master" AutoEventWireup="true" CodeFile="menuadd.aspx.cs" Inherits="menuadd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
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
             width: 90%;
        }
        .style3
        {
             width: 90%;
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
          <font size="3" style="font-family: georgia; color: White;"><b>
     
      <center>  <table class="style1">
            <tr>
                <td>
                    <table class="style2">
                        <tr>
                            <td><center><br /><br /><font size=5.5px>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MENU REGISTRATION</font>
                            <font size="2" style="font-family: georgia; color: Yellow;">
                                 &nbsp;<br /><br />
                                <font size="2" style="font-family: georgia; color: Yellow;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please enter all important fields.<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please recheck before submitting your item.
                                </font>
                                <br /><br /><br /><br />
                            </center></td>
                        </tr>
                    </table>

                    <table class="style3">
                        <tr>
                            <td><center>
                                ITEM-ID<br />
                                <br />
                                <br />
                            </center></td>
                            <td><center>
                                <asp:Label ID="tb_id" runat="server" Font-Bold="True" Font-Italic="False" 
                                    Font-Names="Georgia" Font-Size="12pt"></asp:Label>
                                <br />
                                <br />
                                <br />
                            </center></td>
                        </tr>
                        <tr>
                            <td><center>
                               <font size="2px" style="font-family: georgia; color: Red;">* </font> NAME&nbsp;&nbsp;
                                <br />
                                <br />
                                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </center></td>
                           <td><center>
                                <asp:TextBox ID="tb_name" runat="server" BorderColor="Black" 
                                    BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" 
                                    Font-Overline="False" Font-Size="12pt" ForeColor="Black" Height="31px" 
                                    style="border-radius: 5px;" TextMode="SingleLine" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="tb_name" Display="Dynamic" 
                                    ErrorMessage="Please enter the name" Font-Size="12pt" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="tb_name" Display="Dynamic" 
                                    ErrorMessage="Only Characters & numbers are allowed" ForeColor="Red" 
                                    ValidationExpression="[a-z/A-Z/\s/0-9]*" Font-Size="12pt"></asp:RegularExpressionValidator>
                                <br />
                                <br />
                                <br />
                           </center> </td>
                        </tr>
                        <tr>
                            <td><center>
                               <font size="2px" style="font-family: georgia; color: Red;">* </font> CATEGORY<br />
                                <br />
                                <br />
                           </center> </td>
                            <td><center>
                                <asp:DropDownList ID="tb_cat" runat="server" BorderColor="Black" 
                                    BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" Font-Size="12pt" 
                                    ForeColor="Black" Height="31px" style="border-radius: 5px;" Width="200px" 
                                    AutoPostBack="True" onselectedindexchanged="tb_cat_SelectedIndexChanged">
                                    <asp:ListItem>Select category</asp:ListItem>
                                    <asp:ListItem>Punjabi</asp:ListItem>
                                    <asp:ListItem>Gujrati</asp:ListItem>
                                    <asp:ListItem>Rajasthani</asp:ListItem>
                                    <asp:ListItem>Maharashtrian</asp:ListItem>
                                     <asp:ListItem>Mughlai</asp:ListItem>
                                    <asp:ListItem>Chinese</asp:ListItem>
                                    <asp:ListItem>Italian</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Label ID="lbl_cvalid" runat="server" Font-Size="12pt" ForeColor="Red"></asp:Label>
                                <br />
                                <br />
                                <br />
                           </center> </td>
                        </tr>
                        <tr>
                            <td><center>
                                <font size="2px" style="font-family: georgia; color: Red;">* </font>UNIT<br />
                                <br />
                                <br />
                           </center> </td>
                            <td><center>
                                <asp:DropDownList ID="tb_unit" runat="server" BorderColor="Black" 
                                    BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" Font-Size="12pt" 
                                    ForeColor="Black" Height="31px" style="border-radius: 5px;" Width="200px" 
                                    AutoPostBack="True" onselectedindexchanged="tb_unit_SelectedIndexChanged">
                                    <asp:ListItem>Select Unit</asp:ListItem>
                                    <asp:ListItem>Plate</asp:ListItem>
                                    <asp:ListItem>Kg</asp:ListItem>
                                    <asp:ListItem>Litre</asp:ListItem>
                                </asp:DropDownList>
                               <asp:Label ID="lbl_uvalid" runat="server" Font-Size="12pt" ForeColor="Red"></asp:Label>
                                <br />
                                <br />
                                <br />
                            </center></td>
                        </tr>
                        <tr>
                            <td><center>
                               <font size="2px" style="font-family: georgia; color: Red;">* </font> PRICE<br />
                                <br />
                                <br />
                            </center></td>
                            <td><center>
                                <asp:TextBox ID="tb_price" runat="server" BorderColor="Black" 
                                    BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" 
                                    Font-Size="12pt" ForeColor="Black" Height="31px" style="border-radius: 5px;" 
                                    Width="200px"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="tb_price" Display="Dynamic" 
                                    ErrorMessage="Only numbers with two decimal places are allowed" 
                                    Font-Size="12pt" ForeColor="Red" ValidationExpression="^[0-9]+(\.[0-9]{1,2})?$"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="tb_price" Display="Dynamic" 
                                    ErrorMessage="Please enter the price" Font-Size="12pt" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                                <br />
                            </center></td>
                        </tr>
                        <tr>
                            <td><center>
                              <font size="2px" style="font-family: georgia; color: Red;">* </font>  DISCOUNT<br />
                                <br />
                                <br />
                           </center> </td>
                            <td><center>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="tb_dis" runat="server" BorderColor="Black" BorderStyle="Inset" 
                                    BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" Font-Size="12pt" 
                                    ForeColor="Black" Height="31px" style="border-radius: 5px;" Width="200px"></asp:TextBox>
                                &nbsp;&nbsp; %<asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                                    runat="server" ControlToValidate="tb_dis" Display="Dynamic" 
                                    ErrorMessage="Only numbers with two decimal places are allowed" 
                                    Font-Size="12pt" ForeColor="Red" ValidationExpression="^[0-9]+(\.[0-9]{1,2})?$"></asp:RegularExpressionValidator>
                                <br />
                                <br />
                                <br />
                           </center> </td>
                        </tr>
                        <tr>
                            <td><center>
                              <font size="2px" style="font-family: georgia; color: Red;">* </font>  IMAGE<br />
                                <br />
                            </center></td>
                            <td><center>
                                &nbsp;
                                <asp:FileUpload ID="tb_img" runat="server" BackColor="White" 
                                    BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" 
                                    Font-Size="12pt" ForeColor="Black" Height="31px" style="border-radius: 5px;" 
                                    Width="227px" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="tb_img" Display="Dynamic" 
                                    ErrorMessage="Please enter the image url" Font-Size="12pt" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                                <br />
                           </center> </td>
                        </tr>
                        <tr>
                            <td><center>
                                &nbsp; </center></td>
                            <td><center>
                                &nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" BorderColor="White" 
                                    BorderStyle="Outset" BorderWidth="2px" CssClass="button" Font-Bold="True" 
                                    Font-Names="Georgia" Font-Size="Small" Height="42px" 
                                    style="border-radius: 5px;" Text="ADD ITEM" Width="217px" 
                                    onclick="Button1_Click" />
                                <br />
                                <br />
                                <br />
                            </center></td>
                        </tr>
                        <tr>
                            <td><center>
                                &nbsp;</center></td>
                            <td><center>
                                <asp:Label ID="lbl_out" runat="server" Font-Bold="True" Font-Names="Georgia" 
                                    Font-Size="12pt" ForeColor="Yellow" style="border-radius: 5px;"></asp:Label>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                           </center> </td>
                        </tr>
                    </table>

                </td>
            </tr>
        </table> </center></font> <br /><br />
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

