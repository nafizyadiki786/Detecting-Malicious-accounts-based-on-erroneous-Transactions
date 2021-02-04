<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Malicious Users</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-chunkfive.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

<style type="text/css">
<!--
.style1 {font-size: 23px}
.style2 {color: #FF0000}
.style3 {
	font-family: "Times New Roman", Times, serif;
	font-size: 15px;
}
.style4 {color: #0000FF}
.style5 {font-family: "Times New Roman", Times, serif}
.style6 {font-size: 15px}
.style7 {color: #000000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1 style2">DETECTING MALICIOUS ACCOUNTS - BASED ON ERRONEOUS TRANSACTIONS</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="a_login.jsp"><span>Bank Admin</span></a></li>
          <li><a href="s_login.jsp"><span>Seller</span></a></li>
          <li><a href="u_login.jsp"><span>End User</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center"> View Malicious Users Based on Amount Transfer </h2>
		  <p>&nbsp;</p>
		  
		  
		  
<table width="630" border="1.5" cellpadding="0" cellspacing="0" align="left">
                    <tr bgcolor="#00FF33">
                      <td width="50" height="44" bgcolor="#99CC00"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4"><strong>Id  </strong></div></td>
                      <td width="82" bgcolor="#99CC00"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4"><strong>User  </strong></div></td>
					  <td width="115" bgcolor="#99CC00"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4"><strong>Friend<br />(To Whom User Tried to Transfer)</strong></div></td>
                      <td width="105" bgcolor="#99CC00"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4"><strong>Task </strong></div></td>
					  <td width="98" bgcolor="#99CC00"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4"><strong>IP Address</strong></div></td>
                      <td width="97" bgcolor="#99CC00"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4"><strong>Blocked Date</strong></div></td>
		  </tr>

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;

 try 
	{		
      	   String query="select * from blocked_user where task='Amount Transfer' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);//user
		s3=rs.getString(3);//pn or friend
		s4=rs.getString(4);//task
		s5=rs.getString(5);//ip
		s6=rs.getString(6);//dt
		
		
		%>
                    
                    <tr>
                      <td height="53"><div align="center" class="style9 style10 style12 style5 style6 style7"><%=j%></div></td>
                      <td><div align="center" class="style9 style10 style12 style5 style6 style7"><a href="a_user_profile.jsp?user=<%=s2%>&type=<%="two"%>"><%=s2%></a></div></td>
                      <td><div align="center" class="style9 style10 style12 style5 style6 style7"><a href="a_user_profile.jsp?user=<%=s2%>&type=<%="two"%>"><%=s3%></a></div></td>
					  <td><div align="center" class="style9 style10 style12 style5 style6 style7"><%=s4%></div></td>
					  <td><div align="center" class="style9 style10 style12 style5 style6 style7"><%=s5%></div></td>
					  <td><div align="center" class="style9 style10 style12 style5 style6 style7"><%=s6%></div></td>
        <%
		
	  j=j+1;}
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </table>		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
          <p>&nbsp;</p>
		               <p align="right"><a href="a_main.jsp" class="style3">Back</a></p>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="a_main.jsp"><span> Admin Main </span></a></li>
            <li><a href="a_login.jsp"><span>Log Out</span></a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
