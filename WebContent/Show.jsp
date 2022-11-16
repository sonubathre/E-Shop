<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Iron Rush, Free Website Template</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2034 Iron Rush
http://www.tooplate.com/view/2034-iron-rush
-->
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>

<script type="text/javascript">
$(window).load(function() {
	$('#slider').nivoSlider({
		effect:'random',
		slices:15,
		animSpeed:500,
		pauseTime:3000,
		startSlide:0, //Set starting Slide (0 index)
		directionNav:false,
		directionNavHide:false, //Only show on hover
		controlNav:false, //1,2,3...
		controlNavThumbs:false, //Use thumbnails for Control Nav
		pauseOnHover:true, //Stop animation while hovering
		manualAdvance:false, //Force manual transitions
		captionOpacity:0.8, //Universal caption opacity
		beforeChange: function(){},
		afterChange: function(){},
		slideshowEnd: function(){} //Triggers after all slides have been shown
	});
});
</script>

</head>
<body>
<div id="tooplate_body_wrapper">
<div id="tooplate_wrapper">
	<div id="tooplate_top_bar"></div>	
    
    <div id="tooplate_header">
        <div id="site_title"><h1>Eshop</h1></div>
        <div id="tooplate_menu">
            <ul>
                <li><a href="index.html" class="current">Home</a></li>
                <li><a href="about.html">About Us</a></li>
               
                <li><a href="index.html">Logout</a></li>
                <li><a href="contact.html">Contact Us</a></li>
            </ul>    	
        </div> <!-- end of tooplate_menu -->
    </div> <!-- end of forever header -->
    <div id="tooplate_middle">
      <div id="slider"> <a href="#"><img src="images/slideshow/05.jpg" alt="" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit." /></a> <a href="#"><img src="images/slideshow/02.jpg" alt="" title="Nullam ante leo, consectetur eget adipiscing et." /></a> <a href="#"><img src="images/slideshow/03.jpg" alt="" title="Suspendisse sit amet enim elit. Curabitur tempor consequat." /></a> <a href="#"><img src="images/slideshow/04.jpg" alt="" title="Nulla faucibus luctus quam eget placerat." /></a> <a href="#"><img src="images/slideshow/01.jpg" alt="" title="Phasellus aliquet viverra posuere." /></a> </div>
    </div>
    <!-- end of middle -->
<div id="tooplate_main">
    
    	<div class="col_allw300">
        	<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="db.jsp"%>
<table align="center" border="1px">
<tr>
	<th>Product_id</th>
	<th>Name</th>
	<th>Price</th>
	<th>Category</th>
	<th>Company</th>
</tr>
<%
String qr="select * from product";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(qr);
if(rs.next())
{
	do
	{
		String pid=rs.getString("pid");
		String name=rs.getString("name");
		int price=rs.getInt("price");
		String cat=rs.getString("cat");
		String cmp=rs.getString("cmp");
		%>
		<tr>
		<td><%=pid %></td>
		<td><%=name %></td>
		<td><%=price %></td>
		<td><%=cat %></td>
		<td><%=cmp %></td>
		</tr>
		<%
	}while(rs.next());
}
else
{
	out.println("no records found");
}
con.close();
%>
</table>
            <div class="cleaner"></div>
        </div>
        
        <div class="cleaner"></div>
    </div> <!-- end of main -->

	<div class="cleaner"></div>
</div> <!-- end of forever wrapper -->
</div> <!-- end of forever body wrapper -->

<div id="tooplate_footer_wrapper">
	<div id="tooplate_footer">
	  <div class="cleaner"></div>
    </div>
</div>

<div id="tooplate_copyright_wrapper">
	<div id="tooplate_copyright">
	
    	Copyright � 2048 <a href="#">Company Name</a>
		
    </div>
</div>
</body>
</html>