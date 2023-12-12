<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
String makeItLower(String data){
	return data.toLowerCase();
}
%>
<h2>Lower case of "HELLO WORLD " is: <%= makeItLower("HELLO WORLD") %></h2>
</body>
</html>