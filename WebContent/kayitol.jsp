<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="css/still.css" rel="stylesheet" type="text/css" />

<title>Ücretsiz Üyelik</title>
</head>
<body>
<div id="kForm" style="width:300px;
	margin: 120px auto;">
<form action="kayitol" method="post">
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
	<td>e-mail</td>
	<td>:</td>
	<td><input type="text" name="email" /> <input type="hidden" name="aktiflik" value="aktif" /></td>
</tr>
<tr>
	<td></td>
	<td></td>
	<td> <input type="submit" value="Kaydı Bitir" /> &nbsp;  <input type="button" value="Geri" onclick="javascript:history.back()"/></td>
</tr>
</table>
</form>
<p><b>Anasayfa için  <a href="../Index">TIKLAYINIZ</a></b></p>
</div>
</body>
</html>