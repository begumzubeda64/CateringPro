<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta name="viewport" content="width=device-width, initial-scale=1">
	

    <script  type="text/javascript" language="javascript">
    history.go(1)
</script>

	
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<script type="text/javascript" src="engine1/jquery.js"></script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   


<div id="add" style="height: 591px; width:100%">
       
        
        

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="2000">
                </asp:Timer>
                <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/slider.xml" 
                    Height="522px" Width="100%" />
          
            </ContentTemplate>
        </asp:UpdatePanel>
       
        
        

    </div>

    <div id="m" style="width:100%; ">
    
 
<br/>   
      <center>
  <h2><span> <font size="60" color="black" 
            style=" text-align: center; font-family: forte; opacity:1.0">EVENTS</font></span> </h2>
           </center><br/> 
    
        <br /><br />
           
             <br /></div>
           
      
 
 <div style="width:100%; "> 
 
<div id="wowslider-container1"  style="width:100%;opacity:1.0 ">
<div class="ws_images"  style="width:100%;opacity:1.0"><ul>
		<li><img src="data1/images/anniversary.jpg" alt="anniversary" title="anniversary" id="wows1_0"/></li>
		<li><img src="data1/images/birthday.jpg" alt="birthday" title="birthday" id="wows1_1" /></li>
		<li><img src="data1/images/business.jpg" alt="business" title="business" id="wows1_2"/></li>
		<li><img src="data1/images/wedding.jpg" alt="wedding" title="wedding" id="wows1_3" /></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="anniversary"><span><img src="data1/tooltips/anniversary.jpg" alt="anniversary"/>1</span></a>
		<a href="#" title="birthday"><span><img src="data1/tooltips/birthday.jpg" alt="birthday"/>2</span></a>
		<a href="#" title="business"><span><img src="data1/tooltips/business.jpg" alt="business"/>3</span></a>
		<a href="#" title="wedding"><span><img src="data1/tooltips/wedding.jpg" alt="wedding"/>4</span></a>
	</div></div>
<div class="ws_shadow"></div>
</div>	  <br/> <br/>
<br/>
<br/></div> 
<script type="text/javascript" src="engine1/wowslider.js"></script>
<script type="text/javascript" src="engine1/script.js"></script>

   

<div id="m1">
<br/>   
      <center>
  <h2><span> <font size="60" color="black" 
            style=" text-align: center; font-family: forte; opacity:1.0">CUISINES</font></span> </h2>
           </center><br/> 
    
        
           <br />
           <br />
             <br />
           <font size=5px>  <center><table width=100%><tr><td><center><img height="250px" width="250px" src="hakka.jpg" /></center></td><td><center><img src="mugh2.jpg" height="250px" width="250px"/></center></td><td><center><img src="italy1.jpeg"  height="250px" width="250px" /></center></td><td><center><img src="gujrati1.jpg" height="250px" width="250px"/></center></td><td><center><img src="maha1.jpg" height="250px" width="250px"/></center></td></tr><tr><td><center> Chinese</center></td><td><center>Mughlai</center></td><td><center>Italian</center></td><td><center> Gujrati</center></td><td><center>Maharashtrian</center></td></tr></table></center></font>
           <br />
           <br />
           <br />
           <br />
             <br />
</div>
<div style="background-color: #000000;height:200px">

</div>

</asp:Content>

