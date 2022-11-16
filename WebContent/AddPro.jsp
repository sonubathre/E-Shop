 <%@page import="java.sql.Connection" %>
      <%@page import="java.sql.DriverManager" %>
        <%@page import="java.sql.PreparedStatement" %>
         
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String pid = request.getParameter("pid");
String name = request.getParameter("name");
String p = request.getParameter("price");
int price = Integer.parseInt(p);
String cat = request.getParameter("cat");
String cmp = request.getParameter("cmp");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/adv","root","newroot");
	String qr="insert into Product values(?,?,?,?,?)";
	PreparedStatement ps = con.prepareStatement(qr);
	ps.setString(1,pid);
	ps.setString(2,name);
	ps.setInt(3,price);
	ps.setString(4,cat);
	ps.setString(5,cmp);
	int i = ps.executeUpdate();
	if(i>0){
		out.println("Product Added");
	}else{
		out.println("Product not added");
	}
	con.close();
%>
</body>
</html>