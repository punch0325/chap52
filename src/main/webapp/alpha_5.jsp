<%@page import="com.example.alpha.AlphaParam"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>alpha_5.jsp</title>
<style type="text/css">
	table{
		font-family: monospace;
		border-collapse: collapse;
		font-size: 20pt;
	}
	#submit{
		width:300px;
        margin:auto;
        display:block;
	}
	#f1, #f2{
		width: 50%
	}
</style>
</head>
<body>
<h1>Alpha Generator</h1>
<hr>



<form action="alpha_5.jsp">
	<fieldset>
		<fieldset id ="f1">
			<legend>위치</legend>
			<label for="line">행 </label><input type="number" id="line" name="line" min="1" max="20">
			<label for="col">열 </label><input type="number" id="col" name="col" min="1" max="40">
		</fieldset>
		
		<fieldset id ="f2">
			<legend>색상</legend>
			<label>폰트</label>
			<select name="fg">
<%-- 				<c:forEach>				 --%>
					<option></option>
<%-- 				</c:forEach> --%>
			</select>
			
			<label>배경</label>
			<select name="bg">
				<option></option>
			</select>
		</fieldset><br>
		<div style="width:300px; margin:auto;">
			<input id ="submit" type="submit" value="변경">
		</div>
	</fieldset>
</form>



<hr>
<table id="table" tabindex="0">
	<tbody>
		<c:forEach var = "i" begin="1" end="20">
			<tr>
				<c:forEach var = "j" begin="1" end="40">
				<jsp:useBean id="alpha" class="util.Alpha"/>
					<td style="color:black; background:black;">${alpha.ch}</td>
				<c:remove var="alpha"/>
				</c:forEach>
			</tr>
		</c:forEach>
	</tbody>
</table>
<hr>

</body>
</html>