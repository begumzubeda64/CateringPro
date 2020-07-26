<%@ Page Title="" Language="C#" MasterPageFile="~/admins.master" AutoEventWireup="true" CodeFile="orderadd.aspx.cs" Inherits="orderadd" %>

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
            width:100%;
           
        }
        .style3
        {
            width:100%;
            border-bottom:1px solid white;
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
                                
       <font size="4" style="font-family: georgia; color: White;"><b>
    <center>
        <table class="style1">
            <tr>
                <td>
                    <table class="style3">
                        <tr>
                            <td><center>
                                <br />
                                <br />
                               <font size=5.5px> ORDER REGISTERATION</font><br />
                                <br />
                                <br />
                           </center> </td>
                        </tr>
                    </table>

                    <table class="style2">
                        <tr>
                            <td><center>
                                <br />
                                <br />
                                ORDER ID<br />
                                <br />
                                <br />
                            </center></td>
                            <td><center>
                                <br />
                                <asp:Label ID="lbl_id" runat="server" Font-Bold="True" Font-Names="Georgia" 
                                    Font-Size="15pt"></asp:Label>
                                <br />
                                <br />
                                <br />
                           </center> </td>
                        </tr>
                        <tr>
                            <td><center>
                                CUSTOMER-ID<br />
                                <br />
                                <br />
                           </center> </td>
                            <td><center>
                                <asp:Label ID="tbid" runat="server" Font-Bold="True" Font-Italic="False" 
                                    Font-Names="Georgia" Font-Size="15pt" 
                                    style="border-radius: 5px;"></asp:Label>
                                <br />
                                <br />
                                <br />
                          </center>  </td>
                        </tr>
                        <tr>
                            <td><center>
                                <font size="2px" style="font-family: georgia; color: Red;">* </font>CUSTOMER NAME<br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                                <br />
                           </center> </td>
                            <td><center>
                                <asp:TextBox ID="tb_name" runat="server" BorderColor="Black" 
                                    BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" 
                                    Font-Size="12pt" ForeColor="Black" Height="31px" style="border-radius: 5px;" 
                                    Width="320px"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="tb_name" Display="Dynamic" 
                                    ErrorMessage="Only characters are allowed" Font-Size="12pt" ForeColor="Red" 
                                    ValidationExpression="[a-z/A-Z/\s]*"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="tb_name" Display="Dynamic" 
                                    ErrorMessage="Please enter the name" Font-Size="12pt" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                            </center></td>
                        </tr>
                        <tr>
                            <td><center>
                                <font size="2px" style="font-family: georgia; color: Red;">* </font>ADDRESS<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                           </center> </td>
                            <td><center>
                                <asp:TextBox ID="tb_addr" runat="server" BorderColor="Black" 
                                    BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" 
                                    Font-Size="12pt" ForeColor="Black" Height="122px" style="border-radius: 5px;" 
                                    TextMode="MultiLine" Width="320px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="tb_addr" Display="Dynamic" 
                                    ErrorMessage="Please enter the address" Font-Size="12pt" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                            </center></td>
                        </tr>
                        <tr>
                            <td><center>
                                <font size="2px" style="font-family: georgia; color: Red;">* </font>E-MAIL ID<br />
                                <br />
                                <br />
                                <br />
                           </center> </td>
                            <td><center>
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                    <ContentTemplate>
                                        <asp:TextBox ID="tb_email" runat="server" AutoPostBack="True" 
                                            BorderColor="Black" BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" 
                                            Font-Names="Georgia" Font-Size="12pt" ForeColor="Black" Height="31px" 
                                             style="border-radius: 5px;" Width="320px" 
                                            ontextchanged="tb_email_TextChanged"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                            ControlToValidate="tb_email" Display="Dynamic" 
                                            ErrorMessage="Please enter the e-mail" Font-Size="12pt" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                            ControlToValidate="tb_email" Display="Dynamic" ErrorMessage="Invalid e-mail" 
                                            Font-Size="12pt" ForeColor="Red" 
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        <asp:Label ID="valid_email" runat="server" Font-Size="12pt" ForeColor="Red"></asp:Label>
                                        <br />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </center></td>
                        </tr>
                        <tr>
                            <td><center>
                                <font size="2px" style="font-family: georgia; color: Red;">*</font> CONTACT NO<br />
                                <br />
                                <br />
                            </center></td>
                            <td><center>
                                <asp:TextBox ID="tb_con" runat="server" BorderColor="Black" BorderStyle="Inset" 
                                    BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" Font-Size="12pt" 
                                    ForeColor="Black" Height="31px" style="border-radius: 5px;" Width="320px"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                    ControlToValidate="tb_con" Display="Dynamic" ErrorMessage="Invalid contact no" 
                                    Font-Size="12pt" ForeColor="Red" 
                                    ValidationExpression="[1-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="tb_con" Display="Dynamic" 
                                    ErrorMessage="Please enter the contact no." Font-Size="12pt" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                          </center>  </td>
                        </tr>
                        <tr>
                            <td><center>
                                <font size="2px" style="font-family: georgia; color: Red;">*</font> VERIFICATION 
                                CODE<br />
                                <br />
                            </center></td>
                            <td><center>
                                <asp:TextBox ID="tbpass" runat="server" BorderColor="Black" BorderStyle="Inset" 
                                    BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" Font-Overline="False" 
                                    Font-Size="15pt" ForeColor="black" Height="31px" style="border-radius: 5px;" 
                                    TextMode="Password" Width="320px" AutoPostBack="True" 
                                    ontextchanged="tbpass_TextChanged" ></asp:TextBox>
                                &nbsp;<asp:Button ID="Button2" runat="server" B="" BorderColor="White" 
                                    BorderStyle="Outset" BorderWidth="2px" CssClass="button" Font-Bold="True" 
                                    Font-Names="Georgia" Height="37px"  
                                    style="border-radius: 5px;" Text="SEND CODE" Width="204px" 
                                    CausesValidation="False" onclick="Button2_Click"  />
                                <br />
                                <asp:Label ID="lbl_verify" runat="server" Font-Size="12pt" ForeColor="Red"></asp:Label>
                                <br />
                                <br />
                            </center></td>
                        </tr>
                        
                        <tr>
                            <td><center>
                                <font size="2px" style="font-family: georgia; color: Red;">*</font> EVENT NAME&nbsp;<br />
                                
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </center></td>
                            <td><center>
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        </b>
                               
                                        <asp:DropDownList ID="dd_event" runat="server" AutoPostBack="True" 
                                            BackColor="White" BorderColor="Black" BorderStyle="Inset" BorderWidth="2px" 
                                            Font-Bold="True" Font-Names="Georgia" Font-Size="12pt" ForeColor="Black" 
                                            Height="31px" 
                                            style="border-radius: 5px;" Width="320px" onselectedindexchanged="dd_event_SelectedIndexChanged" 
                                            >
                                            <asp:ListItem>Select event</asp:ListItem>
                                           
                                        </asp:DropDownList>
                                        <b><font size="3" style="font-family: georgia; color: White;">
                                        <asp:Button ID="Button3" runat="server" BorderColor="#FFFFCC" 
                                            BorderStyle="Outset" BorderWidth="2px" CausesValidation="False" 
                                            CssClass="button" Font-Bold="True" Font-Names="Georgia" Font-Size="Small" 
                                            Height="46px" PostBackUrl="~/addevent.aspx" style="border-radius: 5px;" 
                                            Text="ADD NEW EVENT" Width="197px" />
                                        </font></b>
                                        <asp:Label ID="lbl_vevent" runat="server" Font-Size="12pt" ForeColor="Red"></asp:Label>
                                        <br />
                                        <br />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </center></td>
                        </tr>
                        <tr>
                        <td><center><font size="2px" style="font-family: georgia; color: Red;">*</font> DELIVERY DATE 
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            </center> </td>
                        <td><center>
                           
                            

                               
                            <asp:DropDownList ID="dd_day" runat="server" BackColor="White" 
                                BorderColor="Black" BorderStyle="Inset" BorderWidth="2px" 
                                            Font-Bold="True" Font-Names="Georgia" Font-Size="12pt" ForeColor="Black" 
                                            Height="31px" 
                                            style="border-radius: 5px;" Width="100px">
                            </asp:DropDownList>
&nbsp;
                            <asp:DropDownList ID="dd_mo" runat="server" BackColor="White" 
                                BorderColor="Black" BorderStyle="Inset" BorderWidth="2px" 
                                            Font-Bold="True" Font-Names="Georgia" Font-Size="12pt" ForeColor="Black" 
                                            Height="31px" 
                                            style="border-radius: 5px;" Width="100px" AutoPostBack="True" 
                                onselectedindexchanged="dd_mo_SelectedIndexChanged">
                            </asp:DropDownList>
&nbsp;
                            <asp:DropDownList ID="dd_ye" runat="server" BackColor="White" 
                                BorderColor="Black" BorderStyle="Inset" BorderWidth="2px" 
                                            Font-Bold="True" Font-Names="Georgia" Font-Size="12pt" ForeColor="Black" 
                                            Height="31px" 
                                            style="border-radius: 5px;" Width="100px" AutoPostBack="True" 
                                onselectedindexchanged="dd_ye_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:Label ID="lbl_date" runat="server" Font-Size="12pt" ForeColor="Red"></asp:Label>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="dd/mm/yyyy"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <br />
                           
                            

                               
                            <br />

                               
                          
                           
                            </center></td>
                        </tr>
                        <tr>
                        <td></td>
                        <td><center>
                            <asp:Button ID="Button1" runat="server" Text="NEXT" BorderColor="White" 
                                    BorderStyle="Outset" BorderWidth="2px" CssClass="button" Font-Bold="True" 
                                    Font-Names="Georgia" Height="37px" style="border-radius: 5px;" 
                                B Width="204px" onclick="Button1_Click"/>
                            <br />
                            <br />
                            <asp:Label ID="lbl_out" runat="server" Font-Size="12pt" ForeColor="Yellow"></asp:Label>
                            <br />
                            <br />
                            </center></td>
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
       <div style="background-color: #000000;height:200px">
</div>
</asp:Content>

