<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE head PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>
	Moda Sitesi - Geçmişten Geleceğe en kapsamlı moda siteniz...
</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="Geçmişten Geleceğe Moda Sitesi." />
<meta name="keywords" content="Moda sitesi" />
<link rel="stylesheet" type="text/css" href="css/res.css" />
<script type="text/javascript">
function kayitoln(){
	window.location.href="Index/kayitol";
}
</script>
</head>
<body>

<% 
 	if(session.getAttribute("oturum")==null)
 	{
 		request.setCharacterEncoding("UTF-8");
 		response.setCharacterEncoding("UTF-8");
 		request.getRequestDispatcher("giris.jsp").include(request, response);
 		return;
 	}
%>
<div id="nav"> 
	<div class="nav">
<div style="float: right; padding-right:25px;">
	Hoşgeldin <%= session.getAttribute("kAdi") %> :) Oturumu kapatmak için
	<a href="Index/cikis">tıklayınız!</a>
</div>
	<a href="Index">Ana Sayfa</a> | 
	<a href="duyuru.jsp">Duyuru</a> | 
	<a href="hakkimizda.jsp">Hakkımızda</a> | 
	<a href="resimgalerisi.jsp">Resim Galerisi</a> |  
	<a href="iletisim.jsp">iletişim</a>
</div>
</div>
<div id="header">
	<div class="header">
		<!-- Logo -->
		<a href="index.jsp">
			<img src="res/logo.jpg" width="960"/>
		</a>
	</div>
</div>

<!-- Galeri-->

<div id="gallery">
  <div id="imagearea">
    <div id="image">
      <a href="javascript:slideShow.nav(-1)" class="imgnav " id="previmg"></a>
      <a href="javascript:slideShow.nav(1)" class="imgnav " id="nextimg"></a>
    </div>
  </div>
  <div id="thumbwrapper">
    <div id="thumbarea">
      <ul id="thumbs">
        <li value="1"><img src="thumbs/1.jpg" width="179" height="100" alt="" /></li>
        <li value="2"><img src="thumbs/2.jpg" width="179" height="100" alt="" /></li>
        <li value="3"><img src="thumbs/3.jpg" width="179" height="100" alt="" /></li>
        <li value="4"><img src="thumbs/4.jpg" width="179" height="100" alt="" /></li>
        <li value="5"><img src="thumbs/5.jpg" width="179" height="100" alt="" /></li>
		<li value="6"><img src="thumbs/6.jpg" width="179" height="100" alt="" /></li>
		<li value="7"><img src="thumbs/7.jpg" width="179" height="100" alt="" /></li>
		<li value="8"><img src="thumbs/8.jpg" width="179" height="100" alt="" /></li>
		<li value="9"><img src="thumbs/9.jpg" width="179" height="100" alt="" /></li>
		<li value="10"><img src="thumbs/10.jpg" width="179" height="100" alt="" /></li>
		<li value="11"><img src="thumbs/11.jpg" width="179" height="100" alt="" /></li>
		<li value="12"><img src="thumbs/12.jpg" width="179" height="100" alt="" /></li>
		<li value="13"><img src="thumbs/13.jpg" width="179" height="100" alt="" /></li>
		<li value="14"><img src="thumbs/14.jpg" width="179" height="100" alt="" /></li>
		<li value="15"><img src="thumbs/15.jpg" width="179" height="100" alt="" /></li>
		<li value="16"><img src="thumbs/16.jpg" width="179" height="100" alt="" /></li>
		<li value="17"><img src="thumbs/17.jpg" width="179" height="100" alt="" /></li>
		<li value="18"><img src="thumbs/18.jpg" width="179" height="100" alt="" /></li>
		<li value="19"><img src="thumbs/19.jpg" width="179" height="100" alt="" /></li>
		<li value="20"><img src="thumbs/20.jpg" width="179" height="100" alt="" /></li>
		<li value="21"><img src="thumbs/21.jpg" width="179" height="100" alt="" /></li>
		<li value="22"><img src="thumbs/22.jpg" width="179" height="100" alt="" /></li>
		<li value="23"><img src="thumbs/23.jpg" width="179" height="100" alt="" /></li>
		<li value="24"><img src="thumbs/24.jpg" width="179" height="100" alt="" /></li>
		<li value="25"><img src="thumbs/25.jpg" width="179" height="100" alt="" /></li>
		<li value="26"><img src="thumbs/26.jpg" width="179" height="100" alt="" /></li>
		<li value="27"><img src="thumbs/27.jpg" width="179" height="100" alt="" /></li>
		<li value="28"><img src="thumbs/28.jpg" width="179" height="100" alt="" /></li>
      </ul>
    </div>
  </div>
</div>

<script type="text/javascript">
var imgid = 'image';
var imgdir = 'fullsize';
var imgext = '.jpg';
var thumbid = 'thumbs';
var auto = true;
var autodelay = 5;
</script>
<script type="text/javascript" src="slide.js">
</script>

<!-- Temizleme -->
<div style="clear:both;">
</div>
<!--alt alan-->
<div id="altAlan">
	<div class="altAlan">
<a href="#">Ana Sayfa</a> | 
<a href="duyuru.jsp">Duyuru</a> | 
<a href="hakkimizda.jsp">Hakkımızda</a> | 
<a href="resimgalerisi.jsp">Resim Galerisi</a> |  
<a href="iletisim.jsp">İletişim</a>
		<div style="padding: 2px 5px;">
			Bu site proje amacıyla Rahşan, Nazan ve Gözde tarafından oluşturulmustur. Temsili resimler kullanılmıştır.
		</div>
	</div>
</div>
</body>
</html>