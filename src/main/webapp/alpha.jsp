<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>alpha.jsp</title>
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

<!-- 파라미터 값을 잘못 입력했을 때 예외처리하는 방법 1-->
<c:catch var="e">
<table id="table" tabindex="0">
	<tbody>
		<c:forEach var = "i" begin="1" end="${param.line==null || param.line=='' ? 1 : param.line}">
			<tr>
				<c:forEach var = "j" begin="1" end="${param.col==null || param.col=='' ? 1 : param.col}">
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
	잘못입력하셨습니다.<br>
	line, col은 0 이상의 양수만 가능합니다.<br>
	line = ${param.line}<br>
	col = ${param.col}
</c:if>
</body>
</html>