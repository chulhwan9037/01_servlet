<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL</title>
</head>
<body>
	<%-- 
		EL(Expression Language) : 표현 언어
		jsp 표현식 <%= %> 대신에 사용한다. 
		<%= 병수값 이나 메서드의 결과과 %>	 => ${변수나 메서드의 결과}
		
		앞에서 배운 pageContext, request, session, application을 이용해서 
		데이터를 저장한 정보를 EL 이나 JSTL을 이용하면 저장된 정보를 바로 사용할 수 있다. 
	
	
	--%>
	
	<h2>표현식을 사용한 산수연산</h2>
	<h3>
		<ul>
			<li>15 + 7 = <%=15+7 %></li>
			<li>15 - 7 = <%=15-7 %></li>
			<li>15 * 7 = <%=15*7 %></li>
			<li>15 / 7 = <%=15/7 %></li>
			<li>15 % 7 = <%=15%7 %></li>
		</ul>
	</h3>
	
	
	<hr>
	<h2>EL을 사용한 산수연산</h2>
	<h3>
		<ul>
			<li>15 + 7 = ${15+7}</li>
			<li>15 - 7 = ${15-7}</li>
			<li>15 * 7 = ${15*7}</li>
			<li>15 / 7 = ${15/7}</li>
			<li>15 % 7 = ${15%7}</li>
		</ul>
	</h3>
	
	<hr>
	<h2>표현식 변수 사용 예제</h2>
	<% int su = 157 + 47 ; %>
	<h4>결과 : <%= su %></h4>
	<%-- EL은 pageContext, request, session, application 에 저장되어야만 사용할 수 있다. --%>
	<h4>결과 : ${su}</h4>
	<h4>결과 : ${157 + 47}</h4>
	
	<% pageContext.setAttribute("su", su); %>
	<h4>결과 : ${su}</h4>

</body>
</html>

























