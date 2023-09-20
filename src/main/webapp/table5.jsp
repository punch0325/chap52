<%@page import="util.Color"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- 알파테이블의 중간에 아이콘(♥)을 삽입하여 포커싱 되게 한 후,
          키보드의 방향키를 이용하여 상하좌우로 움직일 수 있게끔 구현해보기--%>
<title>table5.jsp</title>
<style type="text/css">
	:focus{
		outline-color: pink;
		outline-style: dotted;
	}
/* 	focus 함수 영역에 style 속성 주기 */
	
	table{
		font-family: monospace;
		border-collapse: collapse;
		font-size: 15pt;
	}
</style>
<script type="text/javascript" src="/js/table5.js"></script>
</head>
<body>
<h1>Alpha Cursor Move</h1>
<hr>
<table id="table" tabindex="0">
	<tbody>
		<c:forEach var = "i" begin="0" end="19">
			<tr>
				<c:forEach var = "j" begin="0" end="39">
				<jsp:useBean id="alpha" class="util.Alpha"/>
				<jsp:setProperty name="alpha" property="fg" value="<%=Color.Black%>"/>
				<jsp:setProperty name="alpha" property="bg" value="<%=Color.Black%>"/>
					<td style="color:${alpha.fg}; background:${alpha.bg};">${alpha.ch}</td>
				<c:remove var="alpha"/>
				</c:forEach>
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>