<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewresponse.aspx.cs" Inherits="viewresponse" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <br /><br /><br /><br /><br /><br /><br /><br />
   <font size="3" style="font-family: georgia; color: White;"><b>
   <center>

        <table class="style1">
            <tr>
                <td>
                    <table class="style2">
                        <tr>
                            <td><center>
                               <font size=5.5px> 
                                <br />
                                QUERY<br />
                                
                                <font color=yellow size=2px>If you are not satisfied with our response you can add another query.</font>
                                <br />
                                </font></center></td>
                        </tr>
                    </table>

                    <table class="style2">
                        <tr>
                            <td><center>
                                <asp:Label ID="lbl_out" runat="server" ></asp:Label>
                                </center></td>
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

