<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/public.css">
</head>
<body>
<pre>
	작성팁 : 
	클라이언트 요청시 데이터 값을 전송 받는다.
	String id = request.getParameter("id");<br>
	
	checkbox에서 값을 받는 방법
	String[] fruits = request.getParameterValues("fruits");
	String frvalue="";
	if(fruits != null){
		for(String f : fruits){
			frvalue += f+"&nbsp;&nbsp;&nbsp;";
		}
	}else{
		frvalue="없음";
	}
	for문을 이용해서 fruits의 f번째 값을 꺼낸다. 
	
</pre>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String[] fruits = request.getParameterValues("fruits");
	String frvalue="";
	if(fruits != null){
		for(String f : fruits){
			frvalue += f+"&nbsp;&nbsp;&nbsp;";
		}
	}else{
		frvalue="없음";
	}
	String file = request.getParameter("file");
%>

<%= id %><br>
<%= name %><br>
<%= gender %><br>
<%= frvalue %><br>
<%= file %><br>


</body>
</html>