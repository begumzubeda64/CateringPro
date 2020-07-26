<%@ Page Title="" Language="C#" MasterPageFile="~/admins.master" AutoEventWireup="true" CodeFile="searchbooking.aspx.cs" Inherits="searchbooking" %>

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
                                <br /><br />
                                <br /><br />
                                <br /><br />
                                <br />
                                <br /><br />
                                <br /><br />
                               <br /><br />
                                <br /><br />
   <font size="3" style="font-family: georgia; color: White;"><b>

    
       
      
        <center><table class="style1">
            <tr>
                <td>
                    <table class="style2">
                        <tr>
                            <td><center>
                                <br />
                               <font size=5.5px> BOOKINGS</font><br /><br />
                                </center></td>
                        </tr>
                    </table>

                   

                    <table class="style3">
                        <tr>
                            <td><center>
                             <br /> <br /> <br /> <br />
                                 SEARCH BY ID&nbsp;&nbsp;&nbsp;&nbsp;  <asp:TextBox ID="tb_search" runat="server" 
                                        BorderColor="Black" BorderStyle="Inset" 
                                      BorderWidth="2px" Font-="" Font-Bold="True" Font-Names="Georgia" 
                                      ForeColor="Black" Height="31px" Size="15pt" style="border-radius: 5px;" 
                                        Width="324px" AutoPostBack="True"></asp:TextBox><br /> <br /> <br />
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                 <br /> <br /> <br /> <br />
                                 
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                                    DataKeyNames="bkid" DataSourceID="SqlDataSource1" ForeColor="Black" 
                                    GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:BoundField DataField="bkid" HeaderText="BOOKING ID" ReadOnly="True" 
                                            SortExpression="bkid" />
                                        <asp:BoundField DataField="cid" HeaderText="Customer Id" SortExpression="cid" />
                                        <asp:BoundField DataField="cname" HeaderText="Customer Name" 
                                            SortExpression="cname" />
                                        <asp:BoundField DataField="oevent" HeaderText="Event Name" 
                                            SortExpression="oevent" />
                                        <asp:BoundField DataField="bkdate" HeaderText="Date" 
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
                                <br />
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
                                        SelectCommand="SELECT * FROM [booking_tbl]"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
                                    OldValuesParameterFormatString="original_{0}" 
                                    
                                        
                                        SelectCommand="SELECT * FROM [booking_tbl] WHERE ([bkid] = @bkid)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="tb_search" Name="bkid" PropertyName="Text" 
                                            Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                                <br />
                                </ContentTemplate>
                                </asp:UpdatePanel>
                           
                           </center> </td>
                        </tr>
                    </table>

                   
                    <table class="style3">
                        <tr>
                            <td><center>
                                <br />
                                <br />
                                <br />
                                <br />
                           </center> </td>
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
                                <br /><br />
                                <br /><br />
                               <br /><br />
                                <br /><br />
    </div>
    <div style="background-color: #000000;height:200px"></div>
</asp:Content>

