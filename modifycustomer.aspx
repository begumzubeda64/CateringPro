<%@ Page Title="" Language="C#" MasterPageFile="~/admins.master" AutoEventWireup="true" CodeFile="modifycustomer.aspx.cs" Inherits="modifycustomer" %>

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
                               <font size=5.5px> CUSTOMER DETAILS</font><br /><br />
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
                                    DataKeyNames="cid" DataSourceID="SqlDataSource1" ForeColor="Black" 
                                    GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                                        <asp:BoundField DataField="cid" HeaderText="Customer Id" ReadOnly="True" 
                                            SortExpression="cid" />
                                        <asp:BoundField DataField="cname" HeaderText="Customer Name" SortExpression="cname" />
                                        <asp:BoundField DataField="cadd" HeaderText="Address" SortExpression="cadd" />
                                        <asp:BoundField DataField="contact" HeaderText="Contact No" 
                                            SortExpression="contact" />
                                        <asp:BoundField DataField="email" HeaderText="Email-Id" SortExpression="email" />
                                        <asp:BoundField DataField="cpass" HeaderText="Password" SortExpression="cpass" />
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConflictDetection="CompareAllValues" 
                                    ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
                                    DeleteCommand="DELETE FROM [customer_tbl] WHERE [cid] = @original_cid AND [cname] = @original_cname AND [cadd] = @original_cadd AND [contact] = @original_contact AND [email] = @original_email AND [cpass] = @original_cpass" 
                                    InsertCommand="INSERT INTO [customer_tbl] ([cid], [cname], [cadd], [contact], [email], [cpass]) VALUES (@cid, @cname, @cadd, @contact, @email, @cpass)" 
                                    OldValuesParameterFormatString="original_{0}" 
                                    SelectCommand="SELECT [cid], [cname], [cadd], [contact], [email], [cpass] FROM [customer_tbl]" 
                                    
                                        UpdateCommand="UPDATE [customer_tbl] SET [cname] = @cname, [cadd] = @cadd, [contact] = @contact, [email] = @email, [cpass] = @cpass WHERE [cid] = @original_cid AND [cname] = @original_cname AND [cadd] = @original_cadd AND [contact] = @original_contact AND [email] = @original_email AND [cpass] = @original_cpass">
                                    <DeleteParameters>
                                        <asp:Parameter Name="original_cid" Type="Int32" />
                                        <asp:Parameter Name="original_cname" Type="String" />
                                        <asp:Parameter Name="original_cadd" Type="String" />
                                        <asp:Parameter Name="original_contact" Type="String" />
                                        <asp:Parameter Name="original_email" Type="String" />
                                        <asp:Parameter Name="original_cpass" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="cid" Type="Int32" />
                                        <asp:Parameter Name="cname" Type="String" />
                                        <asp:Parameter Name="cadd" Type="String" />
                                        <asp:Parameter Name="contact" Type="String" />
                                        <asp:Parameter Name="email" Type="String" />
                                        <asp:Parameter Name="cpass" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="cname" Type="String" />
                                        <asp:Parameter Name="cadd" Type="String" />
                                        <asp:Parameter Name="contact" Type="String" />
                                        <asp:Parameter Name="email" Type="String" />
                                        <asp:Parameter Name="cpass" Type="String" />
                                        <asp:Parameter Name="original_cid" Type="Int32" />
                                        <asp:Parameter Name="original_cname" Type="String" />
                                        <asp:Parameter Name="original_cadd" Type="String" />
                                        <asp:Parameter Name="original_contact" Type="String" />
                                        <asp:Parameter Name="original_email" Type="String" />
                                        <asp:Parameter Name="original_cpass" Type="String" />
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

