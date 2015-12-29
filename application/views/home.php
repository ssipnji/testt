<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<!--
spigot, a free CSS web template by ZyPOP (zypopwebtemplates.com/)

Download: http://zypopwebtemplates.com/

License: Creative Commons Attribution
//-->
</head>
	<body id="page1">
	<!--==============================header=================================-->
		<header>
			<div class="main">
				<div class="wrapper">
					<h1>
						<a href="home.php">Daftar Nama Biota</a>
						
					</h1>
					<nav>
						<ul class="menu">
							<li><a class="active" href="index.html"></a></li>
							<li><a href="services.html"></a></li>
							<li><a href="gallery.html"></a></li>
							<li><a href="privacy.html"></a></li>
							<li><a href="contacts.html"></a></li>
						</ul>
					</nav>
				</div>
			</div><div class="ic"></div>
		</header>
	<!--==============================content================================-->
		
		<section id="content">
			<div class="main">
				<div class="slider-wrapper">
					<div class="slider">
						<ul class="items">
							<li>
								<img src="../assets/images/slider-img1.jpg" alt="" />
								<strong class="banner">
									<a class="close" href="#">x</a>
									<strong>Candi Borobudur</strong>
									<span>Magelang,Jawa Tengah,Indonesia</span>
									<b class="margin-bot">Candi berbentuk stupa ini didirikan oleh para penganut agama Buddha Mahayana sekitar tahun 800-an Masehi pada masa pemerintahan wangsa Syailendra.</b>
									<a class="button2" href="#">Read More</a>
								</strong>
							</li>
							<li>
								<img src="../assets/images/slider-img2.jpg" alt="" />
								<strong class="banner">
									<a class="close" href="#">x</a>
									<strong>Tongkonan</strong>
									<span>Sulawesi Selatan</span>
									<b class="margin-bot">Tongkonan adalah rumah adat dengan ciri rumah panggung dari kayu dimana kolong di bawah rumah biasanya dipakai sebagai kandang kerbau.</b>
									<a class="button2" href="#">Read More</a>
								</strong>
							</li>
							<li>
								<img src="../assets/images/slider-img3.jpg" alt="" />
								<strong class="banner">
									<a class="close" href="#">x</a>
									<strong>Rumah Gadang</strong>
									<span>Sumatera Barat</span>
									<b class="margin-bot">adalah nama untuk rumah adat Minangkabau yang merupakan rumah tradisional dan banyak di jumpai di provinsi Sumatera Barat, Indonesia</b>
									<a class="button2" href="#">Read More</a>
								</strong>
							</li>
							<li>
								<img src="../assets/images/slider-img4.jpg" alt="" />
								<strong class="banner">
									<a class="close" href="#">x</a>
									<strong>Candi Prambanan</strong>
									<span>Sleman</span>
									<b class="margin-bot">Candi Prambanan atau Candi Loro Jonggrang adalah kompleks candi Hindu terbesar di Indonesia yang dibangun pada abad ke-9 masehi, sebagai Trimurti</b>
									<a class="button2" href="#">Read More</a>
								</strong>
							</li>
						</ul>
					</div>
					<ul class="pagination">
						<li><a class="item-1" href=""><strong>01</strong></a></li>
						<li><a class="item-2" href=""><strong>02</strong></a></li>
						<li><a class="item-3" href=""><strong>03</strong></a></li>
						<li><a class="item-4" href=""><strong>04</strong></a></li>
					</ul>
				</div>
				<div class="border-bot1 img-indent-bot">
					<h2>Bangunan-Bangunan Bersejarah<strong>Di Indonesia</strong></h2>
					</div>
					<?php $nomer=1; ?>
		<?php foreach ($tulisan as $row) { ?>
		<article>
		<h2><?php echo $row->judul; ?></h2>
		<div class="article-info">Posted on <time datetime="2014-11-21">14 May</time> by <?php echo $row->penulis; ?></div>

        <p><?php echo $row->tulisan; ?></p>

		<a href="#" class="button">Read more</a>
		<a href="#" class="button">Comments</a>
	
		</article>
		<?php $nomer++; } ?>
				
		</div>
		</section>
	<!--==============================footer=================================-->
		<footer>
			<div class="main">
				<div class="wrapper border-bot2 margin-bot">
					<article class="fcol-1">
						<div class="indent-left">
							<h3 class="color-1">Stay Connected</h3>
							<ul class="list-services">
								<li><a href="#">Facebook</a></li>
								<li><a class="it-2" href="#">Twitter</a></li>
								<li><a class="it-3" href="#">Linked In</a></li>
								<li class="last-item"><a class="it-4" href="#">Del.ico.us</a></li>
							</ul>
						</div>
					</article>
					<article class="fcol-2">
						<h3 class="color-1">Strategy Solution</h3>
						<p class="p3">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit velit esse.</p>
						<a class="button2" href="#">Read More</a>
					</article>
					<article class="fcol-3">
						<h3 class="color-1">Links</h3>
						<ul class="list-3">
							<li><a href="#">Flash Resources</a> <span> - Lorem ipsum dolor</span></li>
							<li><a href="#">CSS &amp; Coding Tutorials</a> <span> - Excepteur sint</span></li>
							<li><a href="#">Free Clipart for Design</a> <span> - Duis autre dolor</span></li>
							<li class="last-item"><a href="#">Design Education</a> <span> - Neque quisquam</span></li>
						</ul>
					</article>
				</div>
				<div class="aligncenter">
					Design Studio &copy; 2011 <a rel="nofollow" class="color-1" href="http://www.templatemonster.com/" target="_blank">Website Template</a> by TemplateMonster.com
				</div>
			</div>
		</footer>
		<script type="text/javascript"> Cufon.now(); </script>
		<script type="text/javascript">
			$(window).load(function() {
				$('.slider')._TMS({
					duration:800,
					easing:'easeOutQuart',
					preset:'diagonalExpand',
					slideshow:7000,
					pagNums:false,
					pagination:'.pagination',
					banners:'fade',
					pauseOnHover:true,
					waitBannerAnimation:true
				});
			});
		</script>
	</body>
</html>