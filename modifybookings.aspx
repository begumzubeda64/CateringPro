<%@ Page Title="" Language="C#" MasterPageFile="~/admins.master" AutoEventWireup="true" CodeFile="modifybookings.aspx.cs" Inherits="modifybookings" %>

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
                               <font size=5.5px> BOOKING DETAILS</font><br /><br />
                                </center></td>
                        </tr>
                    </table>

                   

                    <table class="style3">
                        <tr>
                            <td><center>
                                
                                 <br /> <br /> <br /> <br />
                                 <br/><br/>
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                                    DataKeyNames="bkid" DataSourceID="SqlDataSource2" ForeColor="Black" 
                                    GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                            ShowSelectButton="True" />
                                        <asp:BoundField DataField="bkid" HeaderText="Booking Id" ReadOnly="True" 
                                            SortExpression="bkid" />
                                        <asp:BoundField DataField="cid" HeaderText="Customer Id" SortExpression="cid" />
                                        <asp:BoundField DataField="cname" HeaderText="Customer Name" SortExpression="cname" />
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
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConflictDetection="CompareAllValues" 
                                        ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
                                        DeleteCommand="DELETE FROM [booking_tbl] WHERE [bkid] = @original_bkid AND [cid] = @original_cid AND [cname] = @original_cname AND [oevent] = @original_oevent AND [bkdate] = @original_bkdate AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))" 
                                        InsertCommand="INSERT INTO [booking_tbl] ([bkid], [cid], [cname], [oevent], [bkdate], [status]) VALUES (@bkid, @cid, @cname, @oevent, @bkdate, @status)" 
                                        OldValuesParameterFormatString="original_{0}" 
                                        SelectCommand="SELECT * FROM [booking_tbl]" 
                                        
                                        
                                     UpdateCommand="UPDATE [booking_tbl] SET [cid] = @cid, [cname] = @cname, [oevent] = @oevent, [bkdate] = @bkdate, [status] = @status WHERE [bkid] = @original_bkid AND [cid] = @original_cid AND [cname] = @original_cname AND [oevent] = @original_oevent AND [bkdate] = @original_bkdate AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_bkid" Type="Int32" />
                                            <asp:Parameter Name="original_cid" Type="Int32" />
                                            <asp:Parameter Name="original_cname" Type="String" />
                                            <asp:Parameter Name="original_oevent" Type="String" />
                                            <asp:Parameter Name="original_bkdate" Type="String" />
                                            <asp:Parameter Name="original_status" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="bkid" Type="Int32" />
                                            <asp:Parameter Name="cid" Type="Int32" />
                                            <asp:Parameter Name="cname" Type="String" />
                                            <asp:Parameter Name="oevent" Type="String" />
                                            <asp:Parameter Name="bkdate" Type="String" />
                                            <asp:Parameter Name="status" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="cid" Type="Int32" />
                                            <asp:Parameter Name="cname" Type="String" />
                                            <asp:Parameter Name="oevent" Type="String" />
                                            <asp:Parameter Name="bkdate" Type="String" />
                                            <asp:Parameter Name="status" Type="String" />
                                            <asp:Parameter Name="original_bkid" Type="Int32" />
                                            <asp:Parameter Name="original_cid" Type="Int32" />
                                            <asp:Parameter Name="original_cname" Type="String" />
                                            <asp:Parameter Name="original_oevent" Type="String" />
                                            <asp:Parameter Name="original_bkdate" Type="String" />
                                            <asp:Parameter Name="original_status" Type="String" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                    
                                <br />
                                <br />
                                <br />
                               
                           
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

