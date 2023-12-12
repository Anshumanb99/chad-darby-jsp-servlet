<%@ page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<!--  step1 create the html form -->

	<form action="todo-demo.jsp">
		Add new item : <input type="text" name="theItem" /> <input
			type="submit" value="submit" />
	</form>

	Item entered:
	<%=request.getParameter("theItem")%>

	<!--  step2 add new item to todo list -->
	<%
	//get the todo items from the sessions
	List<String> items = (List<String>) session.getAttribute("myToDoList");

	//if the todo items doesnt exist, then create new one
	if (items == null) {
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}

	//see if there is form data to add
	String theItem = request.getParameter("theItem");
	
	boolean isItemNotEmpty=theItem!=null && theItem.trim().length()>0;
	boolean isItemNotDuplicate=theItem!=null && !items.contains(theItem.trim());
	
	/*if ((theItem != null)&&(!theItem.trim().equals(""))) {
		items.add(theItem);
	}*/
	
	if(isItemNotEmpty && isItemNotDuplicate){
		items.add(theItem);
	}
	%>


	<!--  step3: display all todo items from session -->

	<ol>
		<%
		for (String temp : items) {
			out.println("<li>" + temp + "</li>");
		}
		%>
	</ol>

</body>
</html>