<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<% if(request.getServletPath().endsWith(".jsp")) {response.sendRedirect("Index");} %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="css/still.css" rel="stylesheet" type="text/css" />
<title>Moda Tasarım - Üye Girişi</title>
</head>
<body>
<div id="kForm">
<form action="Index/giris" method="post">
<table>
<tr>
	<td>Kullanıcı adı</td>
	<td>:</td>
	<td><input type="text" name="kAdi" /></td>
</tr>
<tr>
	<td>Şifre</td>
	<td>:</td>
	<td><input type="password" name="sifre" /></td>
</tr>
<tr>
	<td></td>
	<td></td>
	<td> <input type="submit" value="Giriş" /> &nbsp;  <input type="button" value="Hesabım Yok" onclick="javascript:kayitoln()"/></td>
</tr>
</table>
</form>

<p><b>Üye girişi yapmak için formu doldurunuz. <br /> <br />
 Üyeliğiniz yoksa "Hesabım Yok" butonunuz kullanınız.<br /> <br />
  Anasayfa için  <a href="index.jsp">TIKLAYINIZ</a></b></p>
  </div>
</body>
</html>