<%@page import="util.Color"%>
<%@page import="com.example.alpha.AlphaParam"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>alpha_4.jsp</title>
<style type="text/css">
	table{
		font-family: monospace;
		border-collapse: collapse;
		font-size: 20pt;
	}
</style>
<script type="text/javascript">
// 	function figure(){
// 		alert("♥");
// 	} 
</script>
</head>
<body>
<h1>Alpha Generator</h1>
<hr>
<form action="alpha_4.jsp">
	<fieldset>
		<legend>POSITION</legend>
		<label for="line">행</label> <input type="number" id="line" name="line" value="${param.line}" min="1" max="20">
		<label for="col">열</label> <input type="number" id="col" name="col" value="${param.col}" min="1" max="40">
		
		<label for="fg">폰트컬러</label>
		<select id="fg" name="fg">
			<c:forEach var="color" items="${Color.values()}">
				<c:choose>
					<c:when test="${param.fg eq color}">
						<option value="${color}" selected="selected">${color}</option>							
					</c:when>
					<c:otherwise>
						<option value="${color}">${color}</option>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</select>
		
		<label for="bg">배경컬러</label>
		<select id="bg" name="bg">
			<c:forEach var="color" items="${Color.values()}">
				<c:choose>
					<c:when test="${param.bg eq color}">
						<option value="${color}" selected="selected">${color}</option>							
					</c:when>
					<c:otherwise>
						<option value="${color}">${color}</option>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</select>
		
		<input type="submit" value="생성" onclick="figure()">
	</fieldset>
	
	
	<fieldset>
		<legend>Character</legend>
		<c:forEach var = "i" begin="0" end="25">
			<c:set var="ch" value="<%=\"\"+(char)('A'+(Integer)pageContext.getAttribute(\"i\"))%>"></c:set>
			<label for="${ch}">${ch}</label>

<!-- 	alpha4.jsp를 실행시 A에 디폴트 선택이 되어 있기 위한 코드 -->
			<c:choose>
				<c:when test="${param.ch eq ch }">
					<input type="radio" id="${ch}" name="ch" value="A" checked="checked">
				</c:when>
				<c:otherwise>
					<input type="radio" id="${ch}" name="ch" value="${ch}">
				</c:otherwise>
			</c:choose>
		
		</c:forEach>
	</fieldset>
</form>
<br>
<table id="surface">
	<tbody>
		<c:forEach var = "i" begin="1" end="20">
			<tr>
				<c:forEach var = "j" begin="1" end="40">
					<jsp:useBean id="alpha" class="util.Alpha"/>
					<c:choose>
						<c:when test="${param.line  eq i and param.col eq j }">
							<td style="color:${param.fg}; background:${param.bg};">${param.ch}</td>
						</c:when>
						<c:otherwise>
							<td style="color:black; background:black;">${alpha.ch}</td>
						</c:otherwise>
					</c:choose>
					<c:remove var="alpha"/>
				</c:forEach>
			</tr>
		</c:forEach>
	</tbody>
</table>
<hr>

</body>
</html>