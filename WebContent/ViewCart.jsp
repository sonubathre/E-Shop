<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<center>
	<h1>Welcome To Userhome</h1>
</center>
<%
String email=(String)session.getAttribute("uid");
%>
<center><%="welcome " + email%></center>

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
	<%!int total = 0;%>
	<div class="container-fluid">
		<div class="row">
			<%@ include file="db.jsp"%>
			<%
			String qr ="select * from cart where email=?";
				PreparedStatement ps = con.prepareStatement(qr);
				ps.setString(1, email);
				ResultSet rs = ps.executeQuery();
				if (rs.next()) {
					do {
						String pid = rs.getString("pid");
						String name = rs.getString("name");
						int price = rs.getInt("price");
						String cat = rs.getString("cat");
						String cmp = rs.getString("cmp");
						total = total + price;
			%>
			<div class="col-sm-3">

				<div class="card" style="width: ;">
					<img
						src="https://cdn.xxl.thumbs.canstockphoto.com/products-products-for-sale-at-online-internet-web-shop-webshop-cataloge-stock-illustration_csp22810269.jpg"
						class="card-img-top" alt="Product img">
					<div class="card-body">
						<center>
							<h4 class="card-title"><%=pid%><%=name%></h4>
						</center>
						<center>
							<p class="card-text">
								Price:<%=price%><br> Catagory:<%=cat%><br>Company:<%=cmp%></p>
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
		
		<center>
			<h4>Total Amount is<%= total %></h4>
			<a href="https://www.paypal.com/in/signin"
				class="btn btn-danger d-grid gape-2  form-control">Check Out</a>
		</center>
	</div>

</body>
</html>