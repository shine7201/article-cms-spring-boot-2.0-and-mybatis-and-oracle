<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Ŀ�´�Ƽ ����Ʈ - �Խù� ��������</title>
</head>
<style>
	.con{
		width: 1000px;
		margin: 0 auto;
	}
</style>
<body>
	<h1 class="con">�Խù� ��������</h1>
	
		<section class="con">
			��ȣ : ${article.id }<br>
			���� : ${article.title}<br>
			���� : ${article.body }
		</section>
		
		<div class="btns con">
			<a href="./list">�Խù� ����Ʈ</a>
			<a href="./add">�Խù� �߰�</a>
			<a href="./modify?id=${article.id }">�Խù� ����</a>
			<a href="./doDelete?id=${article.id }">�Խù� ����</a>
		</div>
	</body>
</html>