<%@ Page Title="" Language="C#" MasterPageFile="~/admins.master" AutoEventWireup="true" CodeFile="modifymenu.aspx.cs" Inherits="modifymenu" %>

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
                               <font size=5.5px> MENU DETAILS</font><br /><br />
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
                                        DataKeyNames="mid" DataSourceID="SqlDataSource1" ForeColor="Black" 
                                        GridLines="Vertical">
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:CommandField ShowEditButton="True" 
                                                ShowSelectButton="True" />
                                            <asp:BoundField DataField="mid" HeaderText="Menu Item Id" ReadOnly="True" 
                                                SortExpression="mid" />
                                            <asp:BoundField DataField="mname" HeaderText="Menu Item Name" SortExpression="mname" />
                                            <asp:ImageField DataImageUrlField="mimg" HeaderText="Image" ControlStyle-Width="200" ControlStyle-Height="200">
                                                <ControlStyle Height="200px" Width="200px" />
                                            </asp:ImageField>
                                            <asp:BoundField DataField="mcat" HeaderText="Category" SortExpression="mcat" />
                                            <asp:BoundField DataField="munit" HeaderText="Unit" SortExpression="munit" />
                                            <asp:BoundField DataField="mprice" HeaderText="Price" 
                                                SortExpression="mprice" />
                                            <asp:BoundField DataField="mdiscount" HeaderText="Discount" 
                                                SortExpression="mdiscount" />
                                            <asp:BoundField DataField="mimg" HeaderText="Image Url" SortExpression="mimg" />
                                            
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
                                        DeleteCommand="DELETE FROM [menu_tbl] WHERE [mid] = @original_mid AND [mname] = @original_mname AND [mcat] = @original_mcat AND [munit] = @original_munit AND [mprice] = @original_mprice AND [mdiscount] = @original_mdiscount AND [mimg] = @original_mimg" 
                                        InsertCommand="INSERT INTO [menu_tbl] ([mid], [mname], [mcat], [munit], [mprice], [mdiscount], [mimg]) VALUES (@mid, @mname, @mcat, @munit, @mprice, @mdiscount, @mimg)" 
                                        OldValuesParameterFormatString="original_{0}" 
                                        SelectCommand="SELECT * FROM [menu_tbl]" 
                                        UpdateCommand="UPDATE [menu_tbl] SET [mname] = @mname, [mcat] = @mcat, [munit] = @munit, [mprice] = @mprice, [mdiscount] = @mdiscount, [mimg] = @mimg WHERE [mid] = @original_mid AND [mname] = @original_mname AND [mcat] = @original_mcat AND [munit] = @original_munit AND [mprice] = @original_mprice AND [mdiscount] = @original_mdiscount AND [mimg] = @original_mimg">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_mid" Type="Int32" />
                                            <asp:Parameter Name="original_mname" Type="String" />
                                            <asp:Parameter Name="original_mcat" Type="String" />
                                            <asp:Parameter Name="original_munit" Type="String" />
                                            <asp:Parameter Name="original_mprice" Type="String" />
                                            <asp:Parameter Name="original_mdiscount" Type="String" />
                                            <asp:Parameter Name="original_mimg" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="mid" Type="Int32" />
                                            <asp:Parameter Name="mname" Type="String" />
                                            <asp:Parameter Name="mcat" Type="String" />
                                            <asp:Parameter Name="munit" Type="String" />
                                            <asp:Parameter Name="mprice" Type="String" />
                                            <asp:Parameter Name="mdiscount" Type="String" />
                                            <asp:Parameter Name="mimg" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="mname" Type="String" />
                                            <asp:Parameter Name="mcat" Type="String" />
                                            <asp:Parameter Name="munit" Type="String" />
                                            <asp:Parameter Name="mprice" Type="String" />
                                            <asp:Parameter Name="mdiscount" Type="String" />
                                            <asp:Parameter Name="mimg" Type="String" />
                                            <asp:Parameter Name="original_mid" Type="Int32" />
                                            <asp:Parameter Name="original_mname" Type="String" />
                                            <asp:Parameter Name="original_mcat" Type="String" />
                                            <asp:Parameter Name="original_munit" Type="String" />
                                            <asp:Parameter Name="original_mprice" Type="String" />
                                            <asp:Parameter Name="original_mdiscount" Type="String" />
                                            <asp:Parameter Name="original_mimg" Type="String" />
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

