<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<center>
	<h1>Welcome To User Home</h1>
</center>
<%
 String email=(String)session.getAttribute("uid"); 
%>
<center><%="welcome " + email%></center>

	<center><a href="Logout">Logout</a> 
	<a href="ViewCart.jsp"> 
	<img src="https://cdn3.vectorstock.com/i/1000x1000/70/12/add-to-cart-icon-adding-shopping-cart-vector-28487012.jpg" height="70px" width="70px">
	</a>
</center>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eshop</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<%@ include file="db.jsp"%>
			<%
				String qr = "select * from product";
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery(qr);
				if (rs.next()) {
					do {
						String pid = rs.getString("pid");
						String name = rs.getString("name");
						int price = rs.getInt("price");
						String cat = rs.getString("cat");
						String cmp = rs.getString("cmp");
			%>
			<div class="col-sm-3">

				<div class="card" style="width: 18rem;">
					<img
						src="https://cdn.xxl.thumbs.canstockphoto.com/products-products-for-sale-at-online-internet-web-shop-webshop-cataloge-stock-illustration_csp22810269.jpg"
						class="card-img-top" alt="Product img">
					<div class="card-body">
						<center>
							<h5 class="card-title"><%=pid%><%=name%></h5>
						</center>
						<center>
							<p class="card-text">
								Price:<%=price%><br> Catagory:<%=cat%><br>Company:<%=cmp%></p>
						</center>
						<center>
							<a
								href="AddCart?pid=<%=pid%>& name=<%=name%>&price=<%=price%>&cat=<%=cat%>cmp=<%=cmp%>"
								class="btn btn-primary d-grid gape-2">Add To Cart</a>
						</center>
						<center>
							<a href="https://www.paypal.com/in/signin"
								class="btn btn-danger d-grid gape-2">Buy Now</a>
						</center>
					</div>
				</div>
			</div>


			<%
				} while (rs.next());
				} else {
					out.println("no product found");
				}
			%>

		</div>

	</div>

</body>
</html>