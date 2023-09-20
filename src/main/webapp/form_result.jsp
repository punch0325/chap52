<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form_result.jsp</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	String search = request.getParameter("search");
	String[] names = request.getParameterValues("name");
	var map = request.getParameterMap();
// 	for(var enrty : map.entrySet()){
// 		out.println(entry.getKey()+" = "+ Arrays.toString(entry.getValue())+"<br>");
// 	}
%>
<hr>
METHOD = <%=request.getMethod()%><br>
name = <%=name%><br>
search = <%=search%><br>
names=<%=Arrays.toString(names)%>
<hr>
name = ${param.name}<br>
search = ${param.search}<br>
<hr>
<c:forEach var="entry" items="${pageContext.request.parameterMap }">
	<li>${entry.key} = ${Arrays.toString(entry.value)}</li>
</c:forEach>
</body>
</html>