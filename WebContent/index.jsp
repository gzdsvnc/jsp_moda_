<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>Moda Sitesi - Geçmişten geleceğe takip edebileceğiniz en kapsamlı moda sitesi...</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="Geçmişten Geleceğe Moda Sitesi." />
<meta name="keywords" content="Moda sitesi" />
<link rel="stylesheet" type="text/css" href="css/still.css">
<script type="text/javascript" src="js/dropinslideshow.js">
</script>
</head>
<body>

<% if(request.getServletPath().endsWith(".jsp")) {response.sendRedirect("Index");} %> 
<div id="anaAlan">
<div id="nav">
	<div class="nav">
		<div style="float: right; padding-right:25px;">Modayı Takip Edebileceğiniz En Güncel Site </div>
		<a href="Index">Ana Sayfa</a> | 
		<a href="duyuru.jsp">Duyuru</a> | 
		<a href="hakkimizda.jsp">Hakkımızda</a> | 
		<a href="resimgalerisi.jsp">Resim Galerisi</a> |  
		<a href="iletisim.jsp">İletişim</a>
	</div>
</div>

<div id="header">
	<div class="header">
		<!-- Logo -->
		<a href="index.jsp">
			<img src="res/logo.jpg" alt="" width="960" height="200"/>
		</a>
	</div>
</div>

   <!-- Genel Div-->
<div id="genel">

	<!-- Sağ -->
	<div id="sag">
	
	<!-- Kategoriler -->
		<div class="bas">
			<div class="bass">Ana Menümüz</div>
		</div>
		<div id="kategori">
			<a href="Index">Anasayfa</a>
			<a href="hakkimizda.jsp">Hakkımızda</a>
			<a href="resimgalerisi.jsp">Resim Galerisi</a>
			<a href="resimgalerisi.jsp">Üye Giriş</a>
		</div>
		<div class="bas">
			<div class="bass">Sadece Üyelerimize Özel!!</div>
		</div>
		<div id="uyelerimizeOzel">
			<img src="res/ozel.jpg" alt="Üyelerimize Özel!!" align="middle"/>
		</div>
	</div>

	<!-- orta alan -->
	<div id="orta">
		<div class="obas">
			<div class="obass"> Geçmişten Geleceğe Moda Sitesi</div>
		</div>
		<div class="mak">
			<div class="res">
				<script type="text/javascript">

				//Define Image Array. Syntax: ["image_path", "url_destination", "url_target"]
				var myimages=new Array()
				myimages[0]=["res/0.jpg", "", ""]
				myimages[1]=["res/1.jpg", "", ""]
				myimages[2]=["res/2.jpg", "", ""]
				myimages[3]=["res/3.jpg", "", ""]
				myimages[4]=["res/4.jpg", "", ""]

				//Create new drop-in slideshow
				//Syntax: new dropinslideshow(image_array, slideshow_width, slideshow_height, delay_before_rotation)
				new dropinslideshow(myimages, 260, 310, 435, 3000)

				</script>
			</div>
			<h1>Moda Nedir?</h1>
			<p>Aslında moda yalnızca giysi anlamına gelmez. Sanat, müzik, tiyatro, edebiyat, yemek, iç mimarlık, mimari, bahçe bakımı gibi duyuları uyaran herşeyi içine alır. Ama biz sitemizde daha çok giysi ile ilgili moda ile ilgileneceğiz.<br />
			<b> Sözlükte Moda nedir? </b>
			<br />
			<b>1.</b> Giysi, etiket, davetler ve diğerlerinin günlük alışkanlık veya stili<br />
			<b>2.</b> Giyimin, davranışların vb. özellikle seçkin veya seçkin olmak için yapılanan bir toplum tarafından geleneksel kullanımı <br />
			<b>3.</b> Tarz, yol <br />
			<b>4.</b>Herhangi bir şeyin yapısı, formu <br />
				Bu tanımlar modanın zaman içinde gerçek anlamından uzaklaştığını kanıtlıyor. Bugün çoğumuz için moda, yalnızca giysi anlamına geliyor. Oysa bu kadar basit değil. Moda; sanat, müzik, tiyatro, edebiyat, yemek, iç mimarlık, mimari, bahçe bakımı gibi konuları, daha doğrusu duyuları uyaran herşeyi içine alır. Gene de, bu değişimin mantığı anlaşılabilir. 
			</p>
		</div>
	</div>
<!-- genel div son-->
</div>
</div>
<!-- Temizleme -->
<div style="clear:both;"></div>

<!--alt alan-->
<div id="altAlan">
	<div class="altAlan">
		<a href="Index">Ana Sayfa</a> | 
		<a href="duyuru.jsp">Duyuru</a> | 
		<a href="hakkimizda.jsp">Hakkımızda</a> | 
		<a href="resimgalerisi.jsp">Resim Galerisi</a> |  
		<a href="iletisim.jsp">İletişim</a>
		<div style="padding: 2px 5px;">Bu site proje amaçlı Rahşan, Nazan ve Gözde tarafından oluşturulmuştur. Temsili resimler kullanılmıştır.</div>
	</div>
</div>
</body>
</html>