<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Kayit Basarili</title>
</head>
<body>
<% 
 	if(!(session.getAttribute("oturum")==null))
 	{
 		request.setCharacterEncoding("UTF-8");
 		response.setCharacterEncoding("UTF-8");
 		request.getRequestDispatcher("giris.jsp").include(request, response);
 		return;
 	}
%>
</body>
</html>