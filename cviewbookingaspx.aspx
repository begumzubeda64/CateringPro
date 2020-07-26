<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cviewbookingaspx.aspx.cs" Inherits="cviewbookingaspx" %>

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
 <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                      <br />
                    <br />
   <font size="3" style="font-family: georgia; color: White;"><b>

    
       
      
        <center><table class="style1">
            <tr>
                <td>
                    <table class="style2">
                        <tr>
                            <td><center>
                                <br />
                                <font size=5.5px>&nbsp;BOOKINGS</font><br /><br />
                                </center></td>
                        </tr>
                    </table>

                  

                    <table class="style3">
                        <tr>
                            <td><center>
                                <br />
                                <br />
                                <br />
                                  <center> 
                                  
                                  
                                  <table class="style3">
                   <tr>
                   <td>
                        <table class="style3">
                            <tr>
                                <td><center>
                               
                                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="bkid" 
                                        DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" 
                                        BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
                                        GridLines="Vertical">
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:BoundField DataField="bkid" HeaderText="Booking Id" ReadOnly="True" 
                                                SortExpression="bkid" />
                                            <asp:BoundField DataField="cid" HeaderText="Customer Id" SortExpression="cid" />
                                            <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
                                            <asp:BoundField DataField="oevent" HeaderText="Event Name" 
                                                SortExpression="oevent" />
                                            <asp:BoundField DataField="bkdate" HeaderText="Booking Date" 
                                                SortExpression="bkdate" />
                                            <asp:BoundField DataField="status" HeaderText="Status" 
                                                SortExpression="status" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCCCC" />
                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#808080" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#383838" />
                                    </asp:GridView>
                                        
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
                                        SelectCommand="SELECT * FROM [booking_tbl] WHERE ([cid] = @cid)">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="cid" SessionField="id" Type="Int32" />
                                            </SelectParameters>
                                    </asp:SqlDataSource>
                                        
                                        <br />
                                    <br />
                                     <br /> <br />
                               
                           
                               </center> </td>
                        </tr>
                    </table>
                   </td>
                   </tr>
                   </table></center>
                           </center> </td>
                        </tr>
                    </table>
                    
                </td>
            </tr>
        </table></center>
           
       </font>
        <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                      <br />
                    <br />
    </div>
    <div style="background-color: #000000;height:200px">
</div>
</asp:Content>

