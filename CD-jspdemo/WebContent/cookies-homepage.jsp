<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Training portal</h1>

<%

//the default... if there are no cookies
String favLang="Java";

//get the cookie from the browser request
Cookie[] theCookies=request.getCookies();

//find our favourite language cookie
if(theCookies!=null){
	for(Cookie temp:theCookies){
		if("my.favouriteLanguage".equals(temp.getName())){
			favLang=temp.getValue();
			break;
		}
	}
}
%>



<!--  now show a personalized page.. use favLang -->

<h4>New books for <%=favLang %></h4>
<ul>
<li>Blah blah blah</li>
<li>Blah blah blah</li>
<li>Blah blah blah</li>
</ul>
<h4>Hot jobs for for <%=favLang %></h4>
<ul>
<li>Blah blah blah</li>
<li>Blah blah blah</li>
<li>Blah blah blah</li>
</ul>

<hr>
<a href="cookies-personalize-form.html">Personalize this page</a>
</body>
</html>