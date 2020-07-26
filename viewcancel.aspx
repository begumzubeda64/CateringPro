<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewcancel.aspx.cs" Inherits="viewcancel" %>

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
  <br /><br /><br /><br /><br /><br />  
   <font size="3" style="font-family: georgia; color: White;"><b>

    
       
      
        <center><table class="style1">
            <tr>
                <td>
                    <table class="style2">
                        <tr>
                            <td><center>
                                <br />
                               <font size=5.5px> CANCELLATIONS</font><br /><br />
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
                                        DataSourceID="SqlDataSource2" ForeColor="Black" 
                                    GridLines="Vertical" DataKeyNames="cancel_id">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:BoundField DataField="cancel_id" HeaderText="Cancel" 
                                            SortExpression="cancel_id" ReadOnly="True" />
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
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
                                        
                                        SelectCommand="SELECT * FROM [cancel_tbl] WHERE ([cid] = @cid)" 
                                        ConflictDetection="CompareAllValues" 
                                        DeleteCommand="DELETE FROM [cancel_tbl] WHERE [cancel_id] = @original_cancel_id AND [coid] = @original_coid AND [odate] = @original_odate AND [oddate] = @original_oddate AND [oevent] = @original_oevent AND [cdate] = @original_cdate AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL)) AND (([cid] = @original_cid) OR ([cid] IS NULL AND @original_cid IS NULL))" 
                                        InsertCommand="INSERT INTO [cancel_tbl] ([cancel_id], [coid], [odate], [oddate], [oevent], [cdate], [status], [cid]) VALUES (@cancel_id, @coid, @odate, @oddate, @oevent, @cdate, @status, @cid)" 
                                        OldValuesParameterFormatString="original_{0}" 
                                        
                                        
                                        
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
                                            <asp:SessionParameter Name="cid" SessionField="id" Type="Int32" />
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConflictDetection="CompareAllValues" 
                                    ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
                                    DeleteCommand="DELETE FROM [customer_tbl] WHERE [cid] = @original_cid AND [cname] = @original_cname AND [cadd] = @original_cadd AND [contact] = @original_contact AND [email] = @original_email AND [cpass] = @original_cpass AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))" 
                                    InsertCommand="INSERT INTO [customer_tbl] ([cid], [cname], [cadd], [contact], [email], [cpass], [status]) VALUES (@cid, @cname, @cadd, @contact, @email, @cpass, @status)" 
                                    OldValuesParameterFormatString="original_{0}" 
                                    SelectCommand="SELECT * FROM [customer_tbl]" 
                                    UpdateCommand="UPDATE [customer_tbl] SET [cname] = @cname, [cadd] = @cadd, [contact] = @contact, [email] = @email, [cpass] = @cpass, [status] = @status WHERE [cid] = @original_cid AND [cname] = @original_cname AND [cadd] = @original_cadd AND [contact] = @original_contact AND [email] = @original_email AND [cpass] = @original_cpass AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))">
                                    <DeleteParameters>
                                        <asp:Parameter Name="original_cid" Type="Int32" />
                                        <asp:Parameter Name="original_cname" Type="String" />
                                        <asp:Parameter Name="original_cadd" Type="String" />
                                        <asp:Parameter Name="original_contact" Type="String" />
                                        <asp:Parameter Name="original_email" Type="String" />
                                        <asp:Parameter Name="original_cpass" Type="String" />
                                        <asp:Parameter Name="original_status" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="cid" Type="Int32" />
                                        <asp:Parameter Name="cname" Type="String" />
                                        <asp:Parameter Name="cadd" Type="String" />
                                        <asp:Parameter Name="contact" Type="String" />
                                        <asp:Parameter Name="email" Type="String" />
                                        <asp:Parameter Name="cpass" Type="String" />
                                        <asp:Parameter Name="status" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="cname" Type="String" />
                                        <asp:Parameter Name="cadd" Type="String" />
                                        <asp:Parameter Name="contact" Type="String" />
                                        <asp:Parameter Name="email" Type="String" />
                                        <asp:Parameter Name="cpass" Type="String" />
                                        <asp:Parameter Name="status" Type="String" />
                                        <asp:Parameter Name="original_cid" Type="Int32" />
                                        <asp:Parameter Name="original_cname" Type="String" />
                                        <asp:Parameter Name="original_cadd" Type="String" />
                                        <asp:Parameter Name="original_contact" Type="String" />
                                        <asp:Parameter Name="original_email" Type="String" />
                                        <asp:Parameter Name="original_cpass" Type="String" />
                                        <asp:Parameter Name="original_status" Type="String" />
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
       <br /><br /><br /><br /><br /><br />  
    </div>
    <div style="background-color: #000000;height:200px"></div>
</asp:Content>

