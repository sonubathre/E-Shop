<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
if(id.equals("admin@gmail.com")&&pwd.equals("12345"))
{
	session.setAttribute("id", id);
	response.sendRedirect("Ahome.jsp");
}
else
{
	out.println("Invalid Id and Password ");
}
%>
</body>
</html>