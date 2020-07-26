<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="query.aspx.cs" Inherits="query" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
             width: 90%;
             background-color:Black;
              border-radius:10px;
             opacity:0.8;
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

      
   
       
   
       <center> <table class="style2">
            <tr>
            <td>
                <table class="style3">
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="600px" 
                                ImageUrl="~/querypic.png" Width="600px" /></td>
                    </tr>
                </table>
            </td>
                <td>
                    <table class="style3">
                        <tr>
                            <td><center>
                                <br />
                                <font size=5.5px>QUERY</font><br /><br/><font color=yellow size=2px>Please fill all important fields.<br />Query can be maximum 500 characters only.
                                <br /><br /></font></center></td>
                        </tr>
                    </table>

                    <table class="style3">
                        <tr>
                            <td><center>
                                <br />
                                QUERY ID<br />
                            </center></td>
                            <td><center>
                                <br />
                                <asp:Label ID="tbid" runat="server" Font-Bold="True" Font-Italic="False" 
                                    Font-Names="Georgia" Font-Size="12pt" ForeColor="White" 
                                    style="border-radius: 5px;"></asp:Label>

                            </center></td>
                        </tr>
                        <tr>
                            <td><center>
                                <br />
                                DATE<br />
                            </center></td>
                            <td><center>
                               
                                <b>

      
   
       
   
   <font size="3" style="font-family: georgia; color: White;">
                                <br />

      
   
       
   
                                <asp:Label ID="tbdate" runat="server" Font-Bold="True" Font-Italic="False" 
                                    Font-Names="Georgia" Font-Size="12pt" ForeColor="White" 
                                    style="border-radius: 5px;"></asp:Label>
    </font>
                               
                            </center></td>
                        </tr>
                        <tr>
                            <td><center>
                                <b>

      
   
       
   
                                <font size="3" style="font-family: georgia; color: White;">
                                <br />

      
   
       
   
                                  USER NAME</font> </center></td>
                           <td><center>
                                <br />
                                <asp:Label ID="tbname" runat="server" Font-Bold="True" Font-Italic="False" 
                                    Font-Names="Georgia" Font-Size="12pt" ForeColor="White" 
                                    style="border-radius: 5px;"></asp:Label>
                            </center></td>
                        </tr>
                        <tr>
                            <td><center>
                                <b>

      
   
       
   
   <font size="3" style="font-family: georgia; color: White;">

      
   
       
   
                                  <font size="2px" style="font-family: georgia; color: Red;">*</font>QUERY<br />
                                </font></center></td>
                            <td><center>
       <b>
   <font size="3" style="font-family: georgia; color: White;">
                                <br />
                                <asp:TextBox ID="tbquery" runat="server" BorderColor="Black" BorderStyle="Inset" 
                                    BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" Font-Size="15pt" 
                                    ForeColor="Black" Height="61px" style="border-radius: 5px;" 
                                    TextMode="MultiLine" Width="320px" MaxLength="500"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="tbquery" Display="Dynamic" 
                                    ErrorMessage="Please enter the query" ForeColor="Red" Font-Size="12pt"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                                </font>
                            </center></td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td><center>
       <b>
       <font size="3" style="font-family: georgia; color: White;">
                                <asp:Button ID="Button1" runat="server" BorderColor="#FFFFCC" 
                                    BorderStyle="Outset" BorderWidth="2px" CssClass="button" Font-Bold="True" 
                                    Font-Names="Georgia" Font-Size="Small" Height="46px" 
                                    style="border-radius: 5px;" Text="SEND QUERY" Width="222px" onclick="Button1_Click" 
                                   />
    
                                <br />
    
    </font></center></td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td><center>
                                <b><font size="4" style="font-family: georgia; color: White;">
                                <asp:Label ID="lbl_out" runat="server" Font-Size="12pt" ForeColor="Yellow"></asp:Label>
                                <br />
                                <br />
                                </font></b></center></td>
                        </tr>
                    </table></center>

                </td>
            </tr>
        </table>
    </font>
<br /><br /><br /><br /><br /><br /><br /><br />
    </div>
    <div style="background-color: #000000;height:200px"></div>
</asp:Content>

