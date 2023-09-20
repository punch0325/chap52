<%@page import="com.example.alpha.AlphaParam"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>alpha2.jsp</title>
<style type="text/css">
	table{
		font-family: monospace;
		border-collapse: collapse;
		font-size: 20pt;
	}
</style>
</head>
<body>
<h1>Alpha Generator</h1>
<hr>

<!-- 파라미터 값을 잘못 입력했을 때 예외처리하는 방법2 -->
<c:catch var="e">

<%
	var mapping = new AlphaParam();
	mapping.setLine(request.getParameter("line"));
	mapping.setCol(request.getParameter("col"));
	pageContext.setAttribute("mapping", mapping);
%>

<table id="table" tabindex="0">
	<tbody>
		<c:forEach var = "i" begin="1" end="${mapping.line}">
			<tr>
				<c:forEach var = "j" begin="1" end="${mapping.col}">
				<jsp:useBean id="alpha" class="util.Alpha"/>
					<td style="color:${alpha.fg}; background:${alpha.bg};">${alpha.ch}</td>
				<c:remove var="alpha"/>
				</c:forEach>
			</tr>
		</c:forEach>
	</tbody>
</table>
</c:catch>
<hr>

<c:if  test="${e!=null}">
${e.message}
</c:if>
</body>
</html>