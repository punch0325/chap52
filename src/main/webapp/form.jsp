<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form.jsp</title>
</head>
<body>
<h1>form tag practice</h1>
<hr>
<%-- 
		form태그의 request방법
			▶ 페이지 요청시 form태그는 get방식과 post방식 두가지가 있고 method 속성으로 지정한다.
					1) get : 따로 method 속성을 지정해주지 않으면 디폴트로 get 방식으로 페이지가 넘어간다.
								   get request는 input태그에 입력한 데이터와 해당 name이 url에 그대로 보인다.
					2) post : get 페이지 요청 방식과는 반대로 url에 데이터 값이 표시 되지 않으므로
									 보안에 용이하며 대량의 데이터를 보내야할 때 좋다.
 --%>
<form action="form_result.jsp" method="get">
	<input type="text" name="search">
	<input type="submit" value="입력">	
<!-- 	     type이 submit이면 굳이 따로 설정을 하지 않아도 키보드 엔터로 넘어간다. -->
</form>
<br>
<form action="form_result.jsp" method="post">
	<input type="text" name="search">
	<input type="submit" value="입력">
</form>
<hr>
<a href="form_result.jsp?name=eunbi&name=junseok&name=miso">이동(form_result.jsp)</a>
<!-- a태그도 url뿐만 아니라 페이지 이동도 가능하다. -->
<!-- 다만, a태그와 form+input태그의 차이점은 a태그는 단순 이동이지만 -->
<!-- form+input태그는 input태그에 입력한 값을 가지고 해당 페이지로 넘어갈 수 있다. -->
</body>
</html>
