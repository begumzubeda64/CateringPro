<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cancel.aspx.cs" Inherits="cancel" %>

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
            width: 100%;
            border-bottom:1px solid white;
        }
         .style4
        {
            width: 90%;
            border:1px solid white;
            
             border-radius:10px;
            
        }
  
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:100%">
   
       <br /><br /><br /><br /><br /><br /><br /><br />                    
   <font size="3" style="font-family: georgia; color: White;"><b>

        
           
     
     
      <center> <table class="style1">
            <tr>
                <td>
                    <table class="style3">
                        <tr>
                            <td><center>
                                <br />
                                <font size=5.5px>ORDERS<br />
                                </font><br />
                                </center></td>
                        </tr>
                    </table>

                    <table class="style2">
                        <tr>
                            <td><center>
                                
                                SELECT ORDER<br />
                                <br />
                                </center></td>
                            <td><center>
                            <br /><br />
                                <b>
                                
                                <font size="4" style="font-family: georgia; color: White;">
                               
                                       
       
                                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                                    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                                    DataKeyNames="oid" DataSourceID="SqlDataSource3" ForeColor="Black" 
                                    GridLines="Vertical">
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="oid" HeaderText="Order Id" ReadOnly="True" 
                                                SortExpression="oid" />
                                            <asp:BoundField DataField="cid" HeaderText="Customer Id" SortExpression="cid" />
                                            <asp:BoundField DataField="oevent" HeaderText="Order Event" 
                                                SortExpression="oevent" />
                                            <asp:BoundField DataField="odate" HeaderText="Order Date" SortExpression="odate" />
                                            <asp:BoundField DataField="oddate" HeaderText="Delivery Date" 
                                                SortExpression="oddate" />
                                            <asp:BoundField DataField="ostatus" HeaderText="Status" 
                                                SortExpression="ostatus" />
                                            <asp:BoundField DataField="eid" HeaderText="Event Id" SortExpression="eid" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCCCC" />
                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="Gray" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#383838" />
                                    </asp:GridView>
                                   
       
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
                                    SelectCommand="SELECT * FROM [order_tbl] WHERE ([cid] = @cid)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="cid" SessionField="id" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                   
       
                                
                                   
       
       </font>
       <br /><br />
        <font size="3" style="font-family: georgia; color: White;">
                                
                                <font size="4" style="font-family: georgia; color: White;">
                            <asp:Button ID="Button3" CssClass=button runat="server" Text="View Order"  
                                BorderColor="White" BorderStyle="Outset" 
                                    Font-Bold="True" Font-Names="Georgia" Font-Size="12pt"
                                    Height="37px" style="border-radius: 5px;" Width="204px" onclick="Button3_Click"   
                                 />
        </font><br /><br /><br /><br />
                            </center></td>
                        </tr>
                    </table>
                    <asp:Panel ID="Panel1" runat="server">
                   <center> <table class=style4>
                    <tr><td>
                           <table class="style2">
                        <tr>
                            <td>
                            <center>
                                <br />
                                ORDER ID<br />
                                <br />
                                </center></td>
                            <td><center>
                                <asp:Label ID="lbl_id" runat="server"></asp:Label>
                           </center> </td>
                        </tr>
                        <tr>
                            <td><center>
                                <br />
                                ORDER DATE<br />
                                <br />
                                </center></td>
                            <td><center>
                                <asp:Label ID="lbl_date" runat="server"></asp:Label>
                            </center></td>
                        </tr>
                        <tr>
                            <td><center>
                                <br />
                                DELIVERY DATE<br />
                                <br />
                                </center></td>
                            <td><center>
                                <asp:Label ID="lbl_ddate" runat="server"></asp:Label>
                           </center> </td>
                        </tr>
                        <tr>
                            <td><center>
                                <br />
                                EVENT<br />
                                <br />
                                </center></td>
                            <td><center>
                                <asp:Label ID="lbl_event" runat="server"></asp:Label>
                            </center></td>
                        </tr>
                        <tr>
                            <td><center>
                                <br />
                                ITEMS ORDERED<br />
                                </center></td>
                            <td><center>
                                <br />
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                                    CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
                                    GridLines="Vertical" AllowPaging="True" AllowSorting="True">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:BoundField DataField="mname" HeaderText="Item Name" SortExpression="mname" />
                                        <asp:BoundField DataField="quantity" HeaderText="Quantity" 
                                            SortExpression="quantity" />
                                        <asp:BoundField DataField="price" HeaderText="Price" 
                                            SortExpression="price" />
                                        <asp:BoundField DataField="total" HeaderText="Total" SortExpression="total" />
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
                                    SelectCommand="SELECT [mname], [quantity], [price], [total] FROM [lineitem_tbl] WHERE ([oid] = @oid)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="GridView2" Name="oid" 
                                            PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                           </center> </td>
                        </tr>
                        <tr>
                            <td><center>
                                <br />
                                TAX<br />
                                <br />
                                </center></td>
                            <td><center>
                                <asp:Label ID="lbl_tax" runat="server"></asp:Label>
                            </center></td>
                        </tr>
                        <tr>
                            <td><center>
                                <br />
                                TOTAL<br />
                                <br />
                                </center></td>
                            <td><center>
                                <asp:Label ID="lbl_total" runat="server"></asp:Label>
                           </center> </td>
                        </tr>
                        <tr>
                            <td><center>
                                <br />
                                AMOUNT PAID<br />
                                <br />
                                </center></td>
                            <td><center>
                                <asp:Label ID="lbl_ampaid" runat="server"></asp:Label>
                            </center></td>
                        </tr>
                        <tr>
                            <td><center>
                                <br />
                                AMOUNT UNPAID<br />
                                <br />
                                </center></td>
                            <td><center>
                                <asp:Label ID="lbl_amunpaid" runat="server"></asp:Label>
                            </center></td>
                        </tr>
                        
                    </table>
                    </td></tr>
                    </table></center>
             
                    </asp:Panel>
                     
                   
                   

                    <table class="style2">
                        <tr>
                            <td><center>
       <b>
   <font size="3" style="font-family: georgia; color: White;">
                                
                                <font size="4" style="font-family: georgia; color: White;">
                                <br />
                                <asp:Label ID="lbl_out" runat="server" Font-Size="12pt" ForeColor="Yellow"></asp:Label>
                                <br />
                                <br />
                            <asp:Button ID="Button1" CssClass=button runat="server" Text="CANCEL ORDER"  
                                BorderColor="White" BorderStyle="Outset" 
                                    Font-Bold="True" Font-Names="Georgia" Font-Size="12pt"
                                    Height="37px" style="border-radius: 5px;" Width="204px" onclick="Button1_Click"  
                                 />
        &nbsp;
   
                               
   <font size="3" style="font-family: georgia; color: White;">
                                
                                <font size="4" style="font-family: georgia; color: White;">
                            <asp:Button ID="Button2" CssClass=button runat="server" Text="VIEW CANCELLATIONS STATUS"  
                                BorderColor="White" BorderStyle="Outset" 
                                    Font-Bold="True" Font-Names="Georgia" Font-Size="12pt"
                                    Height="37px" style="border-radius: 5px;" Width="300px" 
                                    CausesValidation="False" onclick="Button2_Click" PostBackUrl="~/viewcancel.aspx"  
                                 />
                                <br />
        </font>

        </font>
                                <br />
        </font>

          </font>
                            </center></td>
                        </tr>
                    </table>

                </td>

            </tr>
        </table></center> 
        </font>
        <br<br /><br /><br /><br /><br /><br /><br /><br />
    </div>
    <div style="background-color: #000000;height:200px"></div>
</asp:Content>

