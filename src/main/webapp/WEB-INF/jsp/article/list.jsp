<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Ŀ�´�Ƽ ����Ʈ - �Խù� ����Ʈ</title>
</head>
<body>
	<h1 class="con">�Խù� ����Ʈ</h1>
	
	<h2>��ü �Խù� ���� : ${totalCount}</h2>
	
	<div class="con">
		<!-- el�� ������ request.getAttribute("article") �� �ʿ� ����. -->
		<c:forEach items="${list}" var="article">
			<section>
				��ȣ : ${article.id }, ���� : ${article.title}
			</section>
			<hr>
		</c:forEach>
	</div>
	
	<a href="./add">�Խù� �߰�</a>
</body>
</html>