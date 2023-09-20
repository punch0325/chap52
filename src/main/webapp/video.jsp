<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>video.jsp</title>
<script type="text/javascript">
window.onload = function(){
	video.play();
}
</script>
</head>
<body>
<h1>video 실습</h1>
<hr>
<video src="/media/Wildlife.mp4" width="500"></video><hr>
<video src="/media/Wildlife.mp4" width="700" controls="controls"></video><hr>
<video id="video" src="/media/Wildlife.mp4" width="700" 
			 controls="controls" preload="auto" poster="https://via.placeholder.com/700x400"></video>
<!-- 																			poster 속성 : 동영상 재생 전에 보이는 이미지를 넣어줌							 -->
</body>
</html>