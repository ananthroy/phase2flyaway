<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight List</title>
</head>
<body >
<br>
<a href=HomePage.jsp style="color:black;text-decoration:none;font-size:35px;font-weight:bold;">FlyAway</a>
<br><br>
<%
	@SuppressWarnings("unchecked")
	List<String[]> flights=(List<String[]>)session.getAttribute("flights");
	if(flights!=null){
%>

<h1>Available Flights</h1>


<table border="2" align='center'>
<tr>
	<th>Name</th>
	<th>Price</th>
</tr>



<%
	for(String[] i:flights){
%>

<tr>
<td><%=i[0]%></td>
<td><%=i[1]%></td>
</tr>

</table>
<a href=BookFlight.jsp>Book Now</a> 
<%
	}
%>


<%
	}
	else{
%>
<h1>There are no available flights</h1>
<%
	}
%>
</body>
</html>