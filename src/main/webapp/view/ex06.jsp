<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function send_go(f) {
		// required 안먹음
		let name = f.userName.value;
		if(name === ''){
			alert("이름 입력해줘");
			f.userName.focus();
			return;
		}
		// form 에 action이 없으면 
		f.action = "/01_servlet/Ex06";
		f.submit();
		
	}
</script>
</head>
<body>
	<h2>HTML을 활용한 서버(서블릿)에게 정보 보내기</h2>
	<form action="/01_servlet/Ex06" method="post">
		<P>이름 : <input type="text" name="userName" placeholder="이름을 입력하세요" required></P>
		<P>나이 : <input type="number" name="uAge" required></P>
		<input type="submit" value="서버에게 보내기">
		<input type="reset" value="취소">
	</form>	

	<!-- required 사용 불가 -->
	<h2>JS을 활용한 서버(서블릿)에게 정보 보내기</h2>
	<form method="post">
		<P>이름 : <input type="text" name="userName" placeholder="이름을 입력하세요" required></P>
		<P>나이 : <input type="number" name="uAge" required></P>
		<!-- <input type="submit" value="서버에게 보내기"> -->
		<input type="button" value="서버에 보내기" onclick="send_go(this.form)">
		<input type="reset" value="취소">
	</form>	
	
</body>
</html>























