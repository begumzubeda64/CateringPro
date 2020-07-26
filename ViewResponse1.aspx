<%@ Page Title="" Language="C#" MasterPageFile="~/admins.master" AutoEventWireup="true" CodeFile="ViewResponse1.aspx.cs" Inherits="ViewResponse1" %>

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
                                <font size=5.5px> &nbsp;DETAILS</font><br /><br />
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
                                    DataKeyNames="rid" DataSourceID="SqlDataSource2" ForeColor="Black" 
                                    GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:BoundField DataField="rid" HeaderText="Response Id" ReadOnly="True" 
                                            SortExpression="rid" />
                                        <asp:BoundField DataField="qid" HeaderText="Query Id" SortExpression="qid" />
                                        <asp:BoundField DataField="aid" HeaderText="Admin Id" SortExpression="aid" />
                                        <asp:BoundField DataField="response" HeaderText="Reaponse" 
                                            SortExpression="response" />
                                        <asp:BoundField DataField="rdate" HeaderText="Response Date" SortExpression="rdate" />
                                        <asp:BoundField DataField="branch" HeaderText="Branch" 
                                            SortExpression="branch" />
                                        <asp:BoundField DataField="query" HeaderText="Query" 
                                            SortExpression="query" />
                                        <asp:BoundField DataField="cid" HeaderText="Customer Id" SortExpression="cid" />
                                        <asp:BoundField DataField="bid" HeaderText="Branch Id" SortExpression="bid" />
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
                                        SelectCommand="SELECT * FROM [response_tbl]" 
                                        ConflictDetection="CompareAllValues" 
                                        DeleteCommand="DELETE FROM [response_tbl] WHERE [rid] = @original_rid AND [qid] = @original_qid AND [aid] = @original_aid AND [response] = @original_response AND [rdate] = @original_rdate AND (([branch] = @original_branch) OR ([branch] IS NULL AND @original_branch IS NULL)) AND (([query] = @original_query) OR ([query] IS NULL AND @original_query IS NULL)) AND (([cid] = @original_cid) OR ([cid] IS NULL AND @original_cid IS NULL)) AND (([bid] = @original_bid) OR ([bid] IS NULL AND @original_bid IS NULL))" 
                                        InsertCommand="INSERT INTO [response_tbl] ([rid], [qid], [aid], [response], [rdate], [branch], [query], [cid], [bid]) VALUES (@rid, @qid, @aid, @response, @rdate, @branch, @query, @cid, @bid)" 
                                        OldValuesParameterFormatString="original_{0}" 
                                        
                                        UpdateCommand="UPDATE [response_tbl] SET [qid] = @qid, [aid] = @aid, [response] = @response, [rdate] = @rdate, [branch] = @branch, [query] = @query, [cid] = @cid, [bid] = @bid WHERE [rid] = @original_rid AND [qid] = @original_qid AND [aid] = @original_aid AND [response] = @original_response AND [rdate] = @original_rdate AND (([branch] = @original_branch) OR ([branch] IS NULL AND @original_branch IS NULL)) AND (([query] = @original_query) OR ([query] IS NULL AND @original_query IS NULL)) AND (([cid] = @original_cid) OR ([cid] IS NULL AND @original_cid IS NULL)) AND (([bid] = @original_bid) OR ([bid] IS NULL AND @original_bid IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_rid" Type="Int32" />
                                            <asp:Parameter Name="original_qid" Type="Int32" />
                                            <asp:Parameter Name="original_aid" Type="Int32" />
                                            <asp:Parameter Name="original_response" Type="String" />
                                            <asp:Parameter Name="original_rdate" Type="String" />
                                            <asp:Parameter Name="original_branch" Type="String" />
                                            <asp:Parameter Name="original_query" Type="String" />
                                            <asp:Parameter Name="original_cid" Type="Int32" />
                                            <asp:Parameter Name="original_bid" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="rid" Type="Int32" />
                                            <asp:Parameter Name="qid" Type="Int32" />
                                            <asp:Parameter Name="aid" Type="Int32" />
                                            <asp:Parameter Name="response" Type="String" />
                                            <asp:Parameter Name="rdate" Type="String" />
                                            <asp:Parameter Name="branch" Type="String" />
                                            <asp:Parameter Name="query" Type="String" />
                                            <asp:Parameter Name="cid" Type="Int32" />
                                            <asp:Parameter Name="bid" Type="Int32" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="qid" Type="Int32" />
                                            <asp:Parameter Name="aid" Type="Int32" />
                                            <asp:Parameter Name="response" Type="String" />
                                            <asp:Parameter Name="rdate" Type="String" />
                                            <asp:Parameter Name="branch" Type="String" />
                                            <asp:Parameter Name="query" Type="String" />
                                            <asp:Parameter Name="cid" Type="Int32" />
                                            <asp:Parameter Name="bid" Type="Int32" />
                                            <asp:Parameter Name="original_rid" Type="Int32" />
                                            <asp:Parameter Name="original_qid" Type="Int32" />
                                            <asp:Parameter Name="original_aid" Type="Int32" />
                                            <asp:Parameter Name="original_response" Type="String" />
                                            <asp:Parameter Name="original_rdate" Type="String" />
                                            <asp:Parameter Name="original_branch" Type="String" />
                                            <asp:Parameter Name="original_query" Type="String" />
                                            <asp:Parameter Name="original_cid" Type="Int32" />
                                            <asp:Parameter Name="original_bid" Type="Int32" />
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

