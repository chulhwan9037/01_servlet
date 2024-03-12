<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	fieldset{
		width: 300px;
	}
</style>
</head>
<body>
	<form action="/01_servlet/Ex08_1" method="get">
		<fieldset>
			<legend>학점 계산기</legend>
			<p> 이름 : <input type="text" name="uName" required> </p>
			<p> 국어 : <input type="number" name="s1" required> </p>
			<p> 영어 : <input type="number" name="s2" required> </p>
			<p> 수학 : <input type="number" name="s3" required> </p>
			<input type="submit" value="계산하기">
		</fieldset>
	</form>







</body>
</html>
















