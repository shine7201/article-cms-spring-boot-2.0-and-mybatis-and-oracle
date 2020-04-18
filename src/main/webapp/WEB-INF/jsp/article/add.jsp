<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Ŀ�´�Ƽ ����Ʈ - �Խù� �ۼ�</title>
</head>
<style>
	.con{
		width: 1000px;
		margin: 0 auto;
	}
	
	.common-form > div > * {
		float: left;
	}
	
	.common-form > div::after{
		content: "";
		display: block;
		clear: both;
	}
	
	.common-form > div > span {
		width: 50px;
	}
	
	.common-form > div > div {
		width : calc(100% - 50px);
	}
	
	.common-form > div > div > input[type="text"], .common-form > div > div > textarea {
		width: 90%;
	}
</style>
<body>
	<h1>�Խù� �ۼ�</h1>
	
	<script>
		function submitAddForm(form){
			form.title.value = form.title.value.trim();
			if(form.title.value.length == 0){
				alert("������ �Է����ּ���.");
				form.title.focus();

				return false;
			}

			if(form.body.value.length == 0){
				alert("������ �Է����ּ���.");
				form.body.focus();

				return false;
			}

			form.submit();
		}
	</script>
	
	<form class="con common-form" action="./doAdd" method="POST" onsubmit="submitAddForm(this); return false;">
		<div>
			<span>
				����
			</span>
			<div>
				<input type="text" name="title" placeholder="����" autofocus="autofocus">
			</div>
		</div>
		
		<div>
			<span>
				����
			</span>
			<div>
				<textarea name="body" placeholder="����"></textarea>
			</div>
		</div>
		
		<div>
			<span>
				�ۼ�
			</span>
			<div>
				<input type="submit" value="�ۼ�"/>
				<input type="reset" value="���" onclick="history.back();"/>
			</div>
		</div>
	</form>
</body>
</html>