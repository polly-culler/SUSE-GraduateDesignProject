<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">

<head>
    <title>旧物管理-登录</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="<%=basePath%>user/assets/images/favicon.png" />
    <link href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i&display=swap" rel="stylesheet">
    <link href="https://fonts.font.im/css?family=Yanone+Kaffeesatz" rel="stylesheet">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/animate.min.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/jquery-ui.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/slick.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/chosen.min.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/pe-icon-7-stroke.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/magnific-popup.min.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/lightbox.min.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/js/fancybox/source/jquery.fancybox.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/jquery.scrollbar.min.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/mobile-menu.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/fonts/flaticon/flaticon.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/style.css">
</head>

<body class="inblog-page">
    <!-- -----------------header-------------------- -->
    <header class="header style7">
        
        <div class="container">
            <div class="main-header">
                <div class="row">
                    <div class="col-lg-3 col-sm-4 col-md-3 col-xs-7 col-ts-12 header-element">
                        <div class="logo">
                        	<h3 style="font-family: 'Yanone Kaffeesatz', sans-serif;color: #d79468;margin: 0px 0 0 12px;letter-spacing: 35px;">旧物</h3>
                        	<h4 style="font-family: 'Yanone Kaffeesatz', sans-serif;">SecondHand Store</h4>
                        <!--    <a href="<%=basePath%>user/index.jsp">
                                <img src="<%=basePath%>user/assets/images/logo.png" alt="img">
                            </a> --> 
                        </div>
                    </div>
                    
                    
                </div>
            </div>
        </div>
        
        
	</header>
	<!-- ------------------------------------------- -->
	<!-- -----------------header(mobile) -->
	<div class="header-device-mobile ">
		<div class="wapper ">
			<div class="item mobile-logo ">
				<div class="logo ">
					<a href="# ">
						<img src="<%=basePath%>user/assets/images/logo.png " alt="img ">
					</a>
				</div>
			</div>
			<div class="item item mobile-search-box has-sub ">
				<a href="# ">
						<span class="icon ">
							<i class="fa fa-search " aria-hidden="true "></i>
						</span>
				</a>
				<div class="block-sub ">
					<a href="# " class="close ">
						<i class="fa fa-times " aria-hidden="true "></i>
					</a>
					<div class="header-searchform-box ">
						<form class="header-searchform ">
							<div class="searchform-wrap ">
								<input type="text " class="search-input " placeholder="Enter keywords to search... ">
								<input type="submit " class="submit button " value="Search ">
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="item mobile-settings-box has-sub ">
				<a href="# ">
						<span class="icon ">
							<i class="fa fa-cog " aria-hidden="true "></i>
						</span>
				</a>
				<div class="block-sub ">
					<a href="# " class="close ">
						<i class="fa fa-times " aria-hidden="true "></i>
					</a>
					<div class="block-sub-item ">
						<h5 class="block-item-title ">Currency</h5>
						<form class="currency-form emeriss-language ">
							<ul class="emeriss-language-wrap ">
								<li class="active ">
									<a href="# ">
											<span>
												English (USD)
											</span>
									</a>
								</li>
								<li>
									<a href="# ">
											<span>
												French (EUR)
											</span>
									</a>
								</li>
								<li>
									<a href="# ">
											<span>
												Japanese (JPY)
											</span>
									</a>
								</li>
							</ul>
						</form>
					</div>
				</div>
			</div>
			<div class="item menu-bar ">
				<a class=" mobile-navigation menu-toggle " href="# ">
					<span></span>
					<span></span>
					<span></span>
				</a>
			</div>
		</div>
	</div>
	<!-- ------------------------------------------- -->
	<div class="main-content main-content-login ">
		<div class="container ">
			
			<div class="row ">
				<div class="content-area col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
					<div class="site-main ">
						<h3 class="custom_blog_title ">
							管理员登录
						</h3>
						<div class="customer_login ">
							<div class="row ">
								<div class="col-lg-6 col-md-6 col-sm-12 ">
									管理员登录
								</div>
								
								<div class="col-lg-6 col-md-6 col-sm-12 ">
									<div class="login-item ">
										<h5 class="title-login ">管理员登录</h5>
										<!-- ------登录form---- -->
										<form class="login " action="<c:url value='/AdminServlet'/>" method="post">
											<input type="hidden" name="method" value="login" />
											
											<p class="form-row form-row-wide ">
												<label class="text ">用户名</label>
												<input title="loginname " type="text " name="adminname" class="input-text ">
											</p>
											<p class="form-row form-row-wide ">
												<label class="text ">密码</label>
												<input title="loginpass " type="password " name="adminpwd" class="input-text ">
											</p>
											
											<p class="form-row ">
												<input type="submit" id="submit" class="button btn-shop-now " value="登录 ">
											</p>
										</form>
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	
	<footer class="footer style7 ">
		<div class="container ">
			<div class="container-wapper ">
				<div class="row ">
					<div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-4 ">
						<div class="widget-box ">
							<div class="single-img ">
								<a href="<%=basePath%>user/index.jsp "><img src="<%=basePath%>user/assets/images/logo-light.png " alt="img "></a>
							</div>
							<ul class="menu ">
								<li class="menu-item ">
									<a href="# "><span class="flaticon-placeholder "></span>45 Grand Central Terminal New
										York,NY 1017 United State USA</a>
								</li>
								<li class="menu-item ">
									<a href="# "><span class="fa fa-phone "></span>(+123) 456 789 - (+123) 666 888</a>
								</li>
								<li class="menu-item ">
									<a href="# "><span class="fa fa-envelope-o "></span>Contact@yourcompany.com</a>
								</li>
								<li class="menu-item ">
									<a href="# "><span class="flaticon-clock "></span>Mon-Sat 9:00pm - 5:00pm Sun : Closed</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-2 ">
						<div class="emeriss-custommenu default ">
							<h2 class="widgettitle ">Quick Menu</h2>
							<ul class="menu ">
								<li class="menu-item ">
									<a href="# ">New arrivals</a>
								</li>
								<li class="menu-item ">
									<a href="# ">Life style</a>
								</li>
								<li class="menu-item ">
									<a href="# ">Clothing</a>
								</li>
								<li class="menu-item ">
									<a href="# ">Backpack</a>
								</li>
								<li class="menu-item ">
									<a href="# ">Grooming</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-2 ">
						<div class="emeriss-custommenu default ">
							<h2 class="widgettitle ">Information</h2>
							<ul class="menu ">
								<li class="menu-item ">
									<a href="# ">FAQs</a>
								</li>
								<li class="menu-item ">
									<a href="# ">Track Order</a>
								</li>
								<li class="menu-item ">
									<a href="# ">Delivery</a>
								</li>
								<li class="menu-item ">
									<a href="# ">Contact Us</a>
								</li>
								<li class="menu-item ">
									<a href="# ">Return</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-4 ">
						<div class="emeriss-newsletter style1 ">
							<div class="newsletter-head ">
								<h3 class="title ">Newsletter</h3>
							</div>
							<div class="newsletter-form-wrap ">
								<div class="list ">
									Get notified of new products, limited releases, and more.
								</div>
								<input type="email " class="input-text email email-newsletter "
									   placeholder="Your email letter ">
								<button class="button btn-submit submit-newsletter ">SUBSCRIBE</button>
							</div>
						</div>
						<div class="emeriss-socials ">
							<ul class="socials ">
								<li>
									<a href="# " class="social-item " target="_blank ">
										<i class="icon fa fa-facebook "></i>
									</a>
								</li>
								<li>
									<a href="# " class="social-item " target="_blank ">
										<i class="icon fa fa-twitter "></i>
									</a>
								</li>
								<li>
									<a href="# " class="social-item " target="_blank ">
										<i class="icon fa fa-instagram "></i>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row ">
					<div class="col-sm-12 border-custom ">
						<span></span>
					</div>
				</div>
				<div class="footer-end ">
					<div class="row ">
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
							<div class="coppyright ">
								Copyright © 2020
								<a href="# ">Emeriss</a>
								. All rights reserved
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
							<div class="emeriss-payment ">
								<img src="<%=basePath%>user/assets/images/payments.png " alt="img ">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<div class="footer-device-mobile ">
		<div class="wapper ">
			<div class="footer-device-mobile-item device-home ">
				<a href="index.html ">
					<span class="icon ">
						<i class="fa fa-home " aria-hidden="true "></i>
					</span>
					Home
				</a>
			</div>
			<div class="footer-device-mobile-item device-home device-wishlist ">
				<a href="# ">
					<span class="icon ">
						<i class="fa fa-heart " aria-hidden="true "></i>
					</span>
					Wishlist
				</a>
			</div>
			<div class="footer-device-mobile-item device-home device-cart ">
				<a href="# ">
					<span class="icon ">
						<i class="fa fa-shopping-basket " aria-hidden="true "></i>
						<span class="count-icon ">
							0
						</span>
					</span>
					<span class="text ">Cart</span>
				</a>
			</div>
			<div class="footer-device-mobile-item device-home device-user ">
				<a href="# ">
					<span class="icon ">
						<i class="fa fa-user " aria-hidden="true "></i>
					</span>
					Account
				</a>
			</div>
		</div>
	</div>
	<a href="# " class="backtotop ">
		<i class="fa fa-angle-double-up "></i>
	</a>
	<!-- ---------------------------------------------------------- -->
    <script src="<%=basePath%>user/assets/js/jquery-1.12.4.min.js "></script>
    <script src="<%=basePath%>user/assets/js/jquery.plugin-countdown.min.js "></script>
    <script src="<%=basePath%>user/assets/js/jquery-countdown.min.js "></script>
    <script src="<%=basePath%>user/assets/js/bootstrap.min.js "></script>
    <script src="<%=basePath%>user/assets/js/owl.carousel.min.js "></script>
    <script src="<%=basePath%>user/assets/js/magnific-popup.min.js "></script>
    <script src="<%=basePath%>user/assets/js/isotope.min.js "></script>
    <script src="<%=basePath%>user/assets/js/jquery.scrollbar.min.js "></script>
    <script src="<%=basePath%>user/assets/js/jquery-ui.min.js "></script>
    <script src="<%=basePath%>user/assets/js/mobile-menu.js "></script>
    <script src="<%=basePath%>user/assets/js/chosen.min.js "></script>
    <script src="<%=basePath%>user/assets/js/slick.js "></script>
    <script src="<%=basePath%>user/assets/js/jquery.elevateZoom.min.js "></script>
    <script src="<%=basePath%>user/assets/js/jquery.actual.min.js "></script>
    <script src="<%=basePath%>user/assets/js/fancybox/source/jquery.fancybox.js "></script>
    <script src="<%=basePath%>user/assets/js/lightbox.min.js "></script>
    <script src="<%=basePath%>user/assets/js/owl.thumbs.min.js "></script>
    <script src="<%=basePath%>user/assets/js/jquery.scrollbar.min.js "></script>
    <script src='https://ditu.google.cn/maps/api/js?key=AIzaSyC3nDHy1dARR-Pa_2jjPCjvsOR4bcILYsM'></script>
    <script src="<%=basePath%>user/assets/js/frontend-plugin.js "></script>
</body>
</html>