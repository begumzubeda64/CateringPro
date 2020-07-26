<%@ Page Title="" Language="C#" MasterPageFile="~/admins.master" AutoEventWireup="true" CodeFile="vieworder.aspx.cs" Inherits="vieworder" %>

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
                                <font size=5.5px> ORDER&nbsp;DETAILS</font><br /><br />
                                </center></td>
                        </tr>
                    </table>

                   

                    <table class="style3">
                        <tr>
                            <td><center>
                               
                                 <br /> <br /> <br /> <br />
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                                    DataKeyNames="oid" DataSourceID="SqlDataSource2" ForeColor="Black" 
                                    GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:CommandField ShowEditButton="True" 
                                            ShowSelectButton="True" />
                                        <asp:BoundField DataField="oid" HeaderText="Order Id" ReadOnly="True" 
                                            SortExpression="oid" />
                                        <asp:BoundField DataField="cid" HeaderText="Customer Id" SortExpression="cid" />
                                        <asp:BoundField DataField="oevent" HeaderText="Event Name" 
                                            SortExpression="oevent" />
                                        <asp:BoundField DataField="odate" HeaderText="Order Date" 
                                            SortExpression="odate" />
                                        <asp:BoundField DataField="oddate" HeaderText="Delivery Date" 
                                            SortExpression="oddate" />
                                        <asp:BoundField DataField="ostatus" HeaderText="Status" 
                                            SortExpression="ostatus" />
                                        <asp:BoundField DataField="eid" HeaderText="Event Id" 
                                            SortExpression="eid" />
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
                                        DeleteCommand="DELETE FROM [order_tbl] WHERE [oid] = @original_oid AND [cid] = @original_cid AND [oevent] = @original_oevent AND [odate] = @original_odate AND [oddate] = @original_oddate AND [ostatus] = @original_ostatus AND (([eid] = @original_eid) OR ([eid] IS NULL AND @original_eid IS NULL))" 
                                        InsertCommand="INSERT INTO [order_tbl] ([oid], [cid], [oevent], [odate], [oddate], [ostatus], [eid]) VALUES (@oid, @cid, @oevent, @odate, @oddate, @ostatus, @eid)" 
                                        OldValuesParameterFormatString="original_{0}" 
                                        SelectCommand="SELECT * FROM [order_tbl]" 
                                        UpdateCommand="UPDATE [order_tbl] SET [cid] = @cid, [oevent] = @oevent, [odate] = @odate, [oddate] = @oddate, [ostatus] = @ostatus, [eid] = @eid WHERE [oid] = @original_oid AND [cid] = @original_cid AND [oevent] = @original_oevent AND [odate] = @original_odate AND [oddate] = @original_oddate AND [ostatus] = @original_ostatus AND (([eid] = @original_eid) OR ([eid] IS NULL AND @original_eid IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_oid" Type="Int32" />
                                            <asp:Parameter Name="original_cid" Type="Int32" />
                                            <asp:Parameter Name="original_oevent" Type="String" />
                                            <asp:Parameter Name="original_odate" Type="String" />
                                            <asp:Parameter Name="original_oddate" Type="String" />
                                            <asp:Parameter Name="original_ostatus" Type="String" />
                                            <asp:Parameter Name="original_eid" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="oid" Type="Int32" />
                                            <asp:Parameter Name="cid" Type="Int32" />
                                            <asp:Parameter Name="oevent" Type="String" />
                                            <asp:Parameter Name="odate" Type="String" />
                                            <asp:Parameter Name="oddate" Type="String" />
                                            <asp:Parameter Name="ostatus" Type="String" />
                                            <asp:Parameter Name="eid" Type="Int32" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="cid" Type="Int32" />
                                            <asp:Parameter Name="oevent" Type="String" />
                                            <asp:Parameter Name="odate" Type="String" />
                                            <asp:Parameter Name="oddate" Type="String" />
                                            <asp:Parameter Name="ostatus" Type="String" />
                                            <asp:Parameter Name="eid" Type="Int32" />
                                            <asp:Parameter Name="original_oid" Type="Int32" />
                                            <asp:Parameter Name="original_cid" Type="Int32" />
                                            <asp:Parameter Name="original_oevent" Type="String" />
                                            <asp:Parameter Name="original_odate" Type="String" />
                                            <asp:Parameter Name="original_oddate" Type="String" />
                                            <asp:Parameter Name="original_ostatus" Type="String" />
                                            <asp:Parameter Name="original_eid" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                <br />
                                    <br />
                                    <asp:HyperLink ID="HyperLink17" runat="server" ForeColor="Yellow" 
                                        NavigateUrl="~/viewlineitem.aspx">View Line Item Table</asp:HyperLink>
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

