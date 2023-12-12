<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<%

//read the data
String favLang=request.getParameter("favouriteLanguage");

//create the cookies
Cookie theCookie=new Cookie("my.favouriteLanguage",favLang);

//set max age
theCookie.setMaxAge(60*60*24*365);

//send cookie to browser
response.addCookie(theCookie);

%>
<body>

<h2>Thanks for your favourite language <%= request.getParameter("favouriteLanguage") %></h2>
<a href="cookies-homepage.jsp">Return to home page</a>
</body>
</html>