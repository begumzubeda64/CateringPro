<%@ Page Title="" Language="C#" MasterPageFile="~/admins.master" AutoEventWireup="true" CodeFile="modifybill.aspx.cs" Inherits="modifybill" %>

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
                               <font size=5.5px> BILL DETAILS</font><br /><br />
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
                                    DataKeyNames="billid" DataSourceID="SqlDataSource2" ForeColor="Black" 
                                    GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:CommandField 
                                            ShowEditButton="True" />
                                        <asp:BoundField DataField="billid" HeaderText="Bill Id" ReadOnly="True" 
                                            SortExpression="billid" />
                                        <asp:BoundField DataField="oid" HeaderText="Order Id" SortExpression="oid" />
                                        <asp:BoundField DataField="ampaid" HeaderText="Amount Paid" 
                                            SortExpression="ampaid" />
                                        <asp:BoundField DataField="amunpaid" HeaderText="Amount Unpaid" 
                                            SortExpression="amunpaid" />
                                        <asp:BoundField DataField="status" HeaderText="Status" 
                                            SortExpression="status" />
                                        <asp:BoundField DataField="total" HeaderText="Total" SortExpression="total" />
                                        <asp:BoundField DataField="tax" HeaderText="Tax" 
                                            SortExpression="tax" />
                                        <asp:BoundField DataField="bdate" HeaderText="Date" SortExpression="bdate" />
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
                                        DeleteCommand="DELETE FROM [bill_tbl] WHERE [billid] = @original_billid AND [oid] = @original_oid AND [ampaid] = @original_ampaid AND [amunpaid] = @original_amunpaid AND [status] = @original_status AND [total] = @original_total AND [tax] = @original_tax AND (([bdate] = @original_bdate) OR ([bdate] IS NULL AND @original_bdate IS NULL))" 
                                        InsertCommand="INSERT INTO [bill_tbl] ([billid], [oid], [ampaid], [amunpaid], [status], [total], [tax], [bdate]) VALUES (@billid, @oid, @ampaid, @amunpaid, @status, @total, @tax, @bdate)" 
                                        OldValuesParameterFormatString="original_{0}" 
                                        SelectCommand="SELECT * FROM [bill_tbl]" 
                                        
                                        UpdateCommand="UPDATE [bill_tbl] SET [oid] = @oid, [ampaid] = @ampaid, [amunpaid] = @amunpaid, [status] = @status, [total] = @total, [tax] = @tax, [bdate] = @bdate WHERE [billid] = @original_billid AND [oid] = @original_oid AND [ampaid] = @original_ampaid AND [amunpaid] = @original_amunpaid AND [status] = @original_status AND [total] = @original_total AND [tax] = @original_tax AND (([bdate] = @original_bdate) OR ([bdate] IS NULL AND @original_bdate IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_billid" Type="Int32" />
                                            <asp:Parameter Name="original_oid" Type="Int32" />
                                            <asp:Parameter Name="original_ampaid" Type="String" />
                                            <asp:Parameter Name="original_amunpaid" Type="String" />
                                            <asp:Parameter Name="original_status" Type="String" />
                                            <asp:Parameter Name="original_total" Type="String" />
                                            <asp:Parameter Name="original_tax" Type="String" />
                                            <asp:Parameter Name="original_bdate" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="billid" Type="Int32" />
                                            <asp:Parameter Name="oid" Type="Int32" />
                                            <asp:Parameter Name="ampaid" Type="String" />
                                            <asp:Parameter Name="amunpaid" Type="String" />
                                            <asp:Parameter Name="status" Type="String" />
                                            <asp:Parameter Name="total" Type="String" />
                                            <asp:Parameter Name="tax" Type="String" />
                                            <asp:Parameter Name="bdate" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="oid" Type="Int32" />
                                            <asp:Parameter Name="ampaid" Type="String" />
                                            <asp:Parameter Name="amunpaid" Type="String" />
                                            <asp:Parameter Name="status" Type="String" />
                                            <asp:Parameter Name="total" Type="String" />
                                            <asp:Parameter Name="tax" Type="String" />
                                            <asp:Parameter Name="bdate" Type="String" />
                                            <asp:Parameter Name="original_billid" Type="Int32" />
                                            <asp:Parameter Name="original_oid" Type="Int32" />
                                            <asp:Parameter Name="original_ampaid" Type="String" />
                                            <asp:Parameter Name="original_amunpaid" Type="String" />
                                            <asp:Parameter Name="original_status" Type="String" />
                                            <asp:Parameter Name="original_total" Type="String" />
                                            <asp:Parameter Name="original_tax" Type="String" />
                                            <asp:Parameter Name="original_bdate" Type="String" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                <br />
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

