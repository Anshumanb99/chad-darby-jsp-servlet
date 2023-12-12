<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>The first name of student is <%= request.getParameter("firstName") %></h1>
<h1>The last name of student is <%= request.getParameter("lastName") %></h1>
<h1>The country name of student is <%= request.getParameter("country") %></h1>
<h1>The favorite language of student is <%= request.getParameter("favouriteLanguage") %></h1>
<!-- display list of sepaking language the user know -->
<ul>
<%
String[] langs= request.getParameterValues("speakingLanguage");
if(langs!=null){
	for(String temp: langs){
		out.println("<li>"+temp+"</li>");
	}
}

%>
</ul>



<h2>The full name is ${param.firstName} ${param.lastName} and he lives in ${param.country} and know ${param.favouriteLanguage }</h2>
</body>
</html>