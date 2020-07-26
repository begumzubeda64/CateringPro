<%@ Page Title="" Language="C#" MasterPageFile="~/admins.master" AutoEventWireup="true" CodeFile="viewcrequest.aspx.cs" Inherits="viewcrequest" %>

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
                                <font size=5.5px> CANCELLATION&nbsp;REQUESTS</font><br /><br />
                                </center></td>
                        </tr>
                    </table>

                   

                    <table class="style3">
                        <tr>
                            <td><center>
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                 <br /> <br /> <br /> <br />
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                                    DataKeyNames="cancel_id" DataSourceID="SqlDataSource1" ForeColor="Black" 
                                    GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:BoundField DataField="cancel_id" HeaderText="Cancel Id" ReadOnly="True" 
                                            SortExpression="cancel_id" />
                                        <asp:BoundField DataField="coid" HeaderText="Order Id" SortExpression="coid" />
                                        <asp:BoundField DataField="odate" HeaderText="Order Date" SortExpression="odate" />
                                        <asp:BoundField DataField="oddate" HeaderText="Delivery Date" 
                                            SortExpression="oddate" />
                                        <asp:BoundField DataField="oevent" HeaderText="Event Name" 
                                            SortExpression="oevent" />
                                        <asp:BoundField DataField="cdate" HeaderText="Date" 
                                            SortExpression="cdate" />
                                        <asp:BoundField DataField="status" HeaderText="Status" 
                                            SortExpression="status" />
                                        <asp:BoundField DataField="cid" HeaderText="Customer Id" SortExpression="cid" />
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
                                        ConflictDetection="CompareAllValues" 
                                        ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
                                        DeleteCommand="DELETE FROM [cancel_tbl] WHERE [cancel_id] = @original_cancel_id AND [coid] = @original_coid AND [odate] = @original_odate AND [oddate] = @original_oddate AND [oevent] = @original_oevent AND [cdate] = @original_cdate AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL)) AND (([cid] = @original_cid) OR ([cid] IS NULL AND @original_cid IS NULL))" 
                                        InsertCommand="INSERT INTO [cancel_tbl] ([cancel_id], [coid], [odate], [oddate], [oevent], [cdate], [status], [cid]) VALUES (@cancel_id, @coid, @odate, @oddate, @oevent, @cdate, @status, @cid)" 
                                        OldValuesParameterFormatString="original_{0}" 
                                        SelectCommand="SELECT * FROM [cancel_tbl] WHERE ([status] = @status)" 
                                        
                                        
                                        UpdateCommand="UPDATE [cancel_tbl] SET [coid] = @coid, [odate] = @odate, [oddate] = @oddate, [oevent] = @oevent, [cdate] = @cdate, [status] = @status, [cid] = @cid WHERE [cancel_id] = @original_cancel_id AND [coid] = @original_coid AND [odate] = @original_odate AND [oddate] = @original_oddate AND [oevent] = @original_oevent AND [cdate] = @original_cdate AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL)) AND (([cid] = @original_cid) OR ([cid] IS NULL AND @original_cid IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_cancel_id" Type="Int32" />
                                            <asp:Parameter Name="original_coid" Type="Int32" />
                                            <asp:Parameter Name="original_odate" Type="String" />
                                            <asp:Parameter Name="original_oddate" Type="String" />
                                            <asp:Parameter Name="original_oevent" Type="String" />
                                            <asp:Parameter Name="original_cdate" Type="String" />
                                            <asp:Parameter Name="original_status" Type="String" />
                                            <asp:Parameter Name="original_cid" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="cancel_id" Type="Int32" />
                                            <asp:Parameter Name="coid" Type="Int32" />
                                            <asp:Parameter Name="odate" Type="String" />
                                            <asp:Parameter Name="oddate" Type="String" />
                                            <asp:Parameter Name="oevent" Type="String" />
                                            <asp:Parameter Name="cdate" Type="String" />
                                            <asp:Parameter Name="status" Type="String" />
                                            <asp:Parameter Name="cid" Type="Int32" />
                                        </InsertParameters>
                                        <SelectParameters>
                                            <asp:QueryStringParameter DefaultValue="Not Confirmed" Name="status" 
                                                QueryStringField="status" Type="String" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="coid" Type="Int32" />
                                            <asp:Parameter Name="odate" Type="String" />
                                            <asp:Parameter Name="oddate" Type="String" />
                                            <asp:Parameter Name="oevent" Type="String" />
                                            <asp:Parameter Name="cdate" Type="String" />
                                            <asp:Parameter Name="status" Type="String" />
                                            <asp:Parameter Name="cid" Type="Int32" />
                                            <asp:Parameter Name="original_cancel_id" Type="Int32" />
                                            <asp:Parameter Name="original_coid" Type="Int32" />
                                            <asp:Parameter Name="original_odate" Type="String" />
                                            <asp:Parameter Name="original_oddate" Type="String" />
                                            <asp:Parameter Name="original_oevent" Type="String" />
                                            <asp:Parameter Name="original_cdate" Type="String" />
                                            <asp:Parameter Name="original_status" Type="String" />
                                            <asp:Parameter Name="original_cid" Type="Int32" />
                                        </UpdateParameters>
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

