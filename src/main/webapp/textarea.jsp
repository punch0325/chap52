<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>textarea.jsp</title>
</head>
<body>
<h1>Text Area Practice</h1>
<hr>
<!-- form태그 안의 태그들은 name 속성이 없으면 값을 넘겨줄 수 없다 -->
<form action="textarea.jsp">
<!-- 	fileldset : 값을 입력하는 태그가 아니라, 데코레이션 또는 Grouping을 위함 -->
	<fieldset>
		<legend>title</legend>
		<input type="text" name="title">
	</fieldset>
	<fieldset>
		<legend>article</legend>	
		<textarea rows="10" cols="30" name="article"></textarea>
		<select name="lang">
			<option value="java">Java</option>
			<option value="c++">C++</option>
			<option value="python">Python</option>
			<option value="html">HTML5</option>
			<option value="css">Css</option>
		</select>
	</fieldset>
	<select name="lang2" multiple="multiple">
<!-- 							           multiple : 셀렉트박스가 스크롤 형식(여러줄)으로 보이고,
											   Ctrl+좌클릭으로 여러개 선택하면 값도 여러개 넘길 수 있음 -->
			<option value="java">Java</option>
			<option value="c++">C++</option>
			<option value="python">Python</option>
			<option value="html">HTML5</option>
			<option value="css">Css</option>
	</select>
	<input type="submit">
</form>
<h3>title= ${param.title}</h3>
<hr>
<div>${param.article}</div>
<hr>
<pre>${param.article}</pre>
<hr>
<div>${param.lang}</div>
<pre>
	lang2[0] = ${paramValues.lang2[0]}
	lang2[1] = ${paramValues.lang2[1]}
	lang2[2] = ${paramValues.lang2[2]}
	lang2[3] = ${paramValues.lang2[3]}
</pre>
</body>
</html>