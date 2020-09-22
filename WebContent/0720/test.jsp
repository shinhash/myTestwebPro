<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	h1{
		color: red;
	}
	span{
		color: blue;
		font-size: 2.0em
	}
</style>
</head>
<body>
	<h1>JSP : Java Server Page</h1>
	<h2>서버내에서 실행되는 스크립트 파일</h2>
	<p>HTML과 Java코드를 혼용해서 사용할수 있다.</p>
	<p>java코드를 쓸때는 &lt;%  %&gt; 사이에 기술한다.</p>
	<p>java변수값을 출력 할때는 &lt;%=  %&gt; 사이에 기술한다.</p>
	<p>클라이언트에서 전송시 입력한 데이터를 전송하면 여기서 받는다.</p>
	<p>String 변수 = request.getParameter("name")</p>
	
	
	<%
		// post방식일 경우 글자깨짐을 방지
		request.setCharacterEncoding("UTF-8");
		// 자바문장 기술, 클라이언트에서 전송시 입력한 데이터를 전송하면 여기서 받는다.
		String userId = request.getParameter("id");
		String userName = request.getParameter("name");
		String userPass = request.getParameter("pass");
		String userBir = request.getParameter("birth");
	
	%>
	<span><%= userId %>님 환영합니다.</span><br>
	<span><%= userName %>님 즐거운 하루 되세요.</span><br>
	<span>즐거운 하루 되세요. </span>
	<span>당신의 생일은 <%= userBir %> 입니다. </span>
</body>
</html>