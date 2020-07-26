<%@ Page Title="" Language="C#" MasterPageFile="~/admins.master" AutoEventWireup="true" CodeFile="orderadd1.aspx.cs" Inherits="orderadd1" %>

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
        }
        .style3
        {
            width:100%;
            border-bottom:1px solid white;
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
                                
                                <font size="4" style="font-family: georgia; color: White;"><b>
    <center>

        <table class="style1">
            <tr>
                <td>
                    <table class="style3">
                        <tr>
                            <td><center>
                                <br />
                                <font size=5.5px>ORDER REGISTRATION</font><br />
                                <br />
                            </center></td>
                        </tr>
                    </table>

                    <table class="style2">
                        <tr>
                            <td><center>
                                <br />
                                ORDER ID<br />
                                <br />
                            </center></td>
                            <td><center>
                                <asp:Label ID="lbl_id" runat="server" Font-Bold="True" Font-Names="Georgia" 
                                    Font-Size="15pt"></asp:Label>
                            </center></td>
                        </tr>
                       
                        <tr>
                            <td><center>
                                <br />
                                SEARCH BY NAME<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                
                               </center> <br />
                            </td>
                            <td><center>
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <br />
                                        <asp:TextBox ID="tb_search" runat="server" AutoPostBack="True" 
                                            BorderColor="Black" BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" 
                                            Font-Names="Georgia" Font-Size="12pt" ForeColor="Black" Height="35px" 
                                            style="border-radius: 5px;" Width="320px"></asp:TextBox>

                              
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <asp:GridView ID="searchgv" runat="server" AutoGenerateColumns="False" 
                                            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                                            CellPadding="3" DataSourceID="SqlDataSource1" 
                                            ForeColor="Black" GridLines="Vertical" AllowPaging="True" 
                                            AllowSorting="True" DataKeyNames="mid">
                                            <AlternatingRowStyle BackColor="#CCCCCC" />
                                            <Columns>
                                                <asp:CommandField ShowSelectButton="True" />
                                                <asp:BoundField DataField="mid" HeaderText="Id" 
                                                    SortExpression="mid" ReadOnly="True" />
                                                <asp:BoundField DataField="mname" HeaderText="Name" SortExpression="mname" />
                                                <asp:BoundField DataField="mcat" HeaderText="Category" SortExpression="mcat" />
                                                
                                                <asp:BoundField DataField="munit" HeaderText="Unit" 
                                                    SortExpression="munit" />
                                                    <asp:BoundField DataField="mprice" HeaderText="Price" 
                                                    SortExpression="mprice" />
                                                
                                                <asp:BoundField DataField="mdiscount" HeaderText="Discount" 
                                                    SortExpression="mdiscount" />
                                                
                                                <asp:ImageField DataImageUrlField="mimg" ControlStyle-Height="100" ControlStyle-Width="100">
                                                    <ControlStyle Height="100px" Width="100px" />
                                                </asp:ImageField>
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
                                            ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
                                            
                                            SelectCommand="SELECT [mid], [mname], [mcat], [munit], [mprice], [mdiscount], [mimg] FROM [menu_tbl] WHERE ([mname] LIKE '%' + @mname + '%')">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="tb_search" Name="mname" PropertyName="Text" 
                                                    Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <br />

                              
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                           </center> </td>
                        </tr>
                        <tr>
                            <td><center>
                                <font size="2px" style="font-family: georgia; color: Red;">* </font>QUANTITY&nbsp;
                                <br />
                                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</center> </td>
                            <td><center>
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tb_quan" runat="server" BorderColor="Black" 
                                    BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" Font-Names="Georgia" 
                                    Font-Size="12pt" ForeColor="Black" Height="31px" style="border-radius: 5px;" 
                                    Width="320px"></asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                    ControlToValidate="tb_quan" Display="Dynamic" 
                                    ErrorMessage="Quantity must be in range between 20-1000000000." Font-Size="12pt" 
                                    ForeColor="Red" MaximumValue="1000000000" MinimumValue="20" Type="Integer"></asp:RangeValidator>
                                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="tb_quan" Display="Dynamic" 
                                    ErrorMessage="Please enter the quantity" Font-Size="12pt" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                    ControlToValidate="tb_quan" Display="Dynamic" 
                                    ErrorMessage="Only numbers with two decimal places are allowed" 
                                    Font-Size="12pt" ForeColor="Red" ValidationExpression="^[0-9]+(\.[0-9]{1,2})?$"></asp:RegularExpressionValidator>
                                <br />
                                <br />
                           </center> </td>
                        </tr>
                        <tr>
                            <td>
                                <center>
                                <br />
                                <br />
                                    <br />
                                    <br />
                                    <br />
                                ADDED<br />
                                <br />
                                <br />
                            </center></td>
                            <td><center>
                                
                                <br />
                                <b>
                                <font size="4" style="font-family: georgia; color: White;">
                                    <asp:Button ID="Button2" runat="server" Text="ADD ITEM" CssClass=button 
                                    BorderColor="White" BorderStyle="Outset" 
                                    Font-Bold="True" Font-Names="Georgia" Font-Size="12pt"
                                    Height="37px" style="border-radius: 5px;" Width="204px" onclick="Button2_Click" 
                                     />
                                
                                        <br />
                                
                               </font>
                                <br />
                                <asp:Label ID="tb_add" runat="server"></asp:Label>
                                    
                               
                              
      
                                <br />
                                <br />
                              
                              
                            </center></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                           <td><center>
                               
                               <br />
                               <br />
       <b>
                                <font size="4" style="font-family: georgia; color: yellow;">
                            <asp:Label ID="lbl_out" runat="server"></asp:Label>
                               <br />
                               <br />
        </font>

                                </center></td>
                        </tr>
                        <tr>
                        <td></td>
                        <td><center>
                            <asp:Button ID="Button1" CssClass=button runat="server" Text="NEXT"  
                                BorderColor="White" BorderStyle="Outset" 
                                    Font-Bold="True" Font-Names="Georgia" Font-Size="12pt"
                                    Height="37px" style="border-radius: 5px;" Width="204px" onclick="Button1_Click" 
                                 />
                            <br />
                            <br />
                            </center></td>
                        </tr>
                    </table>

                </td>
            </tr>
        </table>
        </center>
        </font>

                                <br /><br />
                                <br /><br />
                                <br /><br />
                                <br />
                                </div>
                                
       <div style="background-color: #000000;height:200px"></div>

</asp:Content>

