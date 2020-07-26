<%@ Page Title="" Language="C#" MasterPageFile="~/admins.master" AutoEventWireup="true" CodeFile="response.aspx.cs" Inherits="response" %>

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
 <br /><br />
                                <br /><br />
                                <br /><br />
                                <br />
                                <br /><br />
                                <br /><br />
                               <br /><br />
                                <br /><br /><br />
   <font size="3" style="font-family: georgia; color: White;"><b>

      
   
       
   
      
    
       
        
        <center><table class="style1">
            <tr>
                <td>
                    <table class="style2">
                        <tr>
                            <td><center>
                                <br />
                                <font size=5.5px>RESPONSE</font><br />
                                <br />
                            </center></td>
                        </tr>
                    </table>

                    <table class="style3">
                        <tr>
                            <td><center>
                                <br />
                                <br />
                                <asp:GridView ID="querygv" runat="server" AllowPaging="True" 
                                    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                                    DataKeyNames="qid" DataSourceID="SqlDataSource2" ForeColor="Black" 
                                    GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                            ShowSelectButton="True" />
                                        <asp:BoundField DataField="qid" HeaderText="Query Id" ReadOnly="True" 
                                            SortExpression="qid" />
                                        <asp:BoundField DataField="cid" HeaderText="Customer Id" SortExpression="cid" />
                                        <asp:BoundField DataField="cname" HeaderText="Customer Name" SortExpression="cname" />
                                        <asp:BoundField DataField="query" HeaderText="Query" SortExpression="query" />
                                        <asp:BoundField DataField="qdate" HeaderText="Query Date" SortExpression="qdate" />
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
                                    DeleteCommand="DELETE FROM [query_tbl] WHERE [qid] = @original_qid AND [cid] = @original_cid AND [cname] = @original_cname AND [query] = @original_query AND [qdate] = @original_qdate AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))" 
                                    InsertCommand="INSERT INTO [query_tbl] ([qid], [cid], [cname], [query], [qdate], [status]) VALUES (@qid, @cid, @cname, @query, @qdate, @status)" 
                                    OldValuesParameterFormatString="original_{0}" 
                                    SelectCommand="SELECT * FROM [query_tbl] WHERE ([status] = @status)" 
                                    UpdateCommand="UPDATE [query_tbl] SET [cid] = @cid, [cname] = @cname, [query] = @query, [qdate] = @qdate, [status] = @status WHERE [qid] = @original_qid AND [cid] = @original_cid AND [cname] = @original_cname AND [query] = @original_query AND [qdate] = @original_qdate AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))">
                                    <DeleteParameters>
                                        <asp:Parameter Name="original_qid" Type="Int32" />
                                        <asp:Parameter Name="original_cid" Type="Int32" />
                                        <asp:Parameter Name="original_cname" Type="String" />
                                        <asp:Parameter Name="original_query" Type="String" />
                                        <asp:Parameter Name="original_qdate" Type="String" />
                                        <asp:Parameter Name="original_status" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="qid" Type="Int32" />
                                        <asp:Parameter Name="cid" Type="Int32" />
                                        <asp:Parameter Name="cname" Type="String" />
                                        <asp:Parameter Name="query" Type="String" />
                                        <asp:Parameter Name="qdate" Type="String" />
                                        <asp:Parameter Name="status" Type="String" />
                                    </InsertParameters>
                                    <SelectParameters>
                                        <asp:QueryStringParameter DefaultValue="Not Replied" Name="status" 
                                            QueryStringField="status" Type="String" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="cid" Type="Int32" />
                                        <asp:Parameter Name="cname" Type="String" />
                                        <asp:Parameter Name="query" Type="String" />
                                        <asp:Parameter Name="qdate" Type="String" />
                                        <asp:Parameter Name="status" Type="String" />
                                        <asp:Parameter Name="original_qid" Type="Int32" />
                                        <asp:Parameter Name="original_cid" Type="Int32" />
                                        <asp:Parameter Name="original_cname" Type="String" />
                                        <asp:Parameter Name="original_query" Type="String" />
                                        <asp:Parameter Name="original_qdate" Type="String" />
                                        <asp:Parameter Name="original_status" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                <br />
                                <br />
                                <asp:TextBox ID="tb_reply" runat="server" BorderColor="Black" 
                                    BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" 
                                    Font-Size="15pt" ForeColor="Black" Height="61px" MaxLength="500" 
                                    style="border-radius: 5px;" TextMode="MultiLine" Width="320px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="tb_reply" Display="Dynamic" 
                                    ErrorMessage="Please enter the reply" Font-Size="12pt" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                                <asp:Button ID="Button1" runat="server" BorderColor="#FFFFCC" 
                                    BorderStyle="Outset" BorderWidth="2px" CssClass="button" Font-Bold="True" 
                                    Font-Names="Georgia" Font-Size="Small" Height="46px" 
                                    style="border-radius: 5px;" Text="SEND REPLY" Width="222px" 
                                    onclick="Button1_Click" />
                                <br />
                                <br />
                                <asp:Label ID="lbl_out" runat="server" Font-Size="12pt" ForeColor="Yellow"></asp:Label>
                               
                                <br />
                                <br />
                                <asp:HyperLink ID="HyperLink17" runat="server" ForeColor="Yellow" 
                                    NavigateUrl="~/ViewQueries.aspx">View Queries</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
                                <asp:HyperLink ID="HyperLink18" runat="server" ForeColor="Yellow" 
                                    NavigateUrl="~/ViewResponse1.aspx">View Responses</asp:HyperLink>
                               
                                <br />
                                <br />
                                <br />
                                <br />
                           </center> </td>
                        </tr>
                    </table>

                </td>
            </tr>
        </table></center></font>
        <br /><br />
                                <br /><br />
                                <br /><br />
                                <br />
                                <br /><br />
                                <br /><br />
                               <br /><br />
                                <br /><br /><br />
    </div>
    <div style="background-color: #000000;height:200px"></div>
</asp:Content>

