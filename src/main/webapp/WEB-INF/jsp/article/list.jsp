<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>커뮤니티 사이트 - 게시물 리스트</title>
</head>
<body>
	<h1>게시물 리스트</h1>
	
		<h2>v2</h2>
		<!-- el의 장점은 request.getAttribute("article") 할 필요 없음. -->
		<c:forEach items="${list}" var="article">
			<section>
				번호 : ${article.id }, 제목 : ${article.title}
			</section>
			<hr>
		</c:forEach>
	</body>
</html>