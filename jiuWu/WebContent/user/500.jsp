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
    <title>旧物Home</title>
    <meta charset="UTF-8">
    
    <meta http-equiv="X-UA-compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="<%=basePath%>user/assets/images/favicon.png" />
    <link href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
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

	 <script src="<%=basePath%>user/assets/js/jquery-1.12.4.min.js "></script>
    <script src="<%=basePath%>user/assets/js/navbar.js "></script>
    
    <script language="javascript">
		/*
		 * 1. 对象名必须与第一个参数相同！
		   2. 第二个参数是显示在菜单上的大标题
		 */
		var bar = new Q6MenuBar("bar", "传智播客网上书城");
		$(function(){
			//bar.colorStyle = 4;//指定配色样式，一共0,1,2,3,4
			//bar.config.imgDir = "<c:url value='/menu/img/'/>";//小工具所需图片的路径
			bar.config.radioButton=true;//是否排斥，多个一级分类是否排斥
		
			/*
			1. 程序设计：一级分类名称
			2. Java Javascript：二级分类名称
			3. /项目名/jsps/book/list.jsp：点击二级分类后链接到的URL
			4. body:链接的内容在哪个框架页中显示
			*/
		<c:forEach items="${parents}" var="parent">
		  <c:forEach items="${parent.children}" var="child">
			bar.add("${parent.cname}", "${child.cname}", "/jiuWu/GoodsServlet?method=findByCategory&cid=${child.cid}", "body");
		  </c:forEach>
		</c:forEach>
			
			$("#menu").html(bar.toString());
		});
	</script>
	    
    

</head>

<body class="home">
    <!-------------------- header(website) ---------------->
    <header class="header style7">
        <div class="top-bar">
            <div class="container">
                <div class="top-bar-left">
                    <div class="header-message">
                        Welcome to our online store!
                    </div>
                </div>
                <div class="top-bar-right">
                    <div class="header-language">
                        <div class="emeriss-language emeriss-dropdown">
                            <a href="#" class="active language-toggle" data-emeriss="emeriss-dropdown">
                                <span>
										English (USD)
									</span>
                            </a>
                            <ul class="emeriss-submenu">
                                <li class="switcher-option">
                                    <a href="#">
                                        <span>
												French (EUR)
											</span>
                                    </a>
                                </li>
                                <li class="switcher-option">
                                    <a href="#">
                                        <span>
												Japanese (JPY)
											</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <ul class="header-user-links">
                        <li>
                            <a href="<%=basePath%>user/login.jsp">Login or Register</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="main-header">
                <div class="row">
                    <div class="col-lg-3 col-sm-4 col-md-3 col-xs-7 col-ts-12 header-element">
                        <div class="logo">
                            <a href="<%=basePath%>user/index.jsp">
                                <img src="<%=basePath%>user/assets/images/logo.png" alt="img">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-7 col-sm-8 col-md-6 col-xs-5 col-ts-12">
                        <div class="block-search-block">
                            <form id="form1" class="form-search form-search-width-category" action="<c:url value='/GoodsServlet'/>" method="post">
                                <input type="hidden" name="method" value="findByGname"/>
                                <div class="form-content">
                                    <div class="inner">
                                        <input type="text" class="input" name="gname" value="" placeholder="搜索">
                                    </div>
                                    <a href="javascript:document.getElementById('form1').submit();">
                                    	<button class="btn-search" >
                                    		<span class="icon-search"></span>
                                		</button>
                                	</a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-2 col-sm-12 col-md-3 col-xs-12 col-ts-12">
                        <div class="header-control">
                            <div class="block-minicart emeriss-mini-cart block-header ">
                                <a href="/jiuWu/CartItemServlet?method=myCart" class="shopcart-icon" data-emeriss="emeriss-dropdown">
	                                Cart
	                                
	                            </a>
                                
                            </div>
                            <c:choose>
							<c:when test="${empty sessionScope.sessionUser }">
								   <div class="block-account block-header emeriss-dropdown">
                                <a href="javascript:void(0);" data-emeriss="emeriss-dropdown">
                                    <span class="flaticon-user"></span>
                                </a>
                                <div class="header-account emeriss-submenu">
                                    <div class="header-user-form-tabs">
                                        <ul class="tab-link">
                                            <li class="active">
                                                <a data-toggle="tab" aria-expanded="true" href="#header-tab-login">登录</a>
                                            </li>
                                            <li>
                                                <a data-toggle="tab" aria-expanded="true" href="#header-tab-rigister">注册</a>
                                            </li>
                                        </ul>

                                        <!-- ----------登录/注册----------- -->
                                        <div class="tab-container">
                                            <!-- 登录 -->
                                            <div id="header-tab-login" class="tab-panel active">
                                                <form method="post" action="#" class="login form-login">
                                                    <p class="form-row form-row-wide">
                                                        <input type="email" " placeholder="Email " class="input-text ">
                                                    </p>
                                                    <p class="form-row form-row-wide ">
                                                        <input type="password " class="input-text " placeholder="password ">
                                                    </p>
                                                    <p class="form-row ">
                                                        <label class="form-checkbox ">
                                                        <input type="checkbox " class="input-checkbox ">
                                                        <span>
                                                                   	记住我
                                                        </span>
                                                    </label>
                                                        <input type="submit " class="button " value="登录 ">
                                                    </p>
                                                    <p class="lost_password ">
                                                        <a href="# ">忘记密码</a>
                                                    </p>
                                                </form>
                                            </div>
                                            <!-- 注册 -->
                                            <div id="header-tab-rigister " class="tab-panel ">
                                                <form method="post " action="# " class="register form-register ">
                                                    <p class="form-row form-row-wide ">
                                                        <input type="email " placeholder="Email " class="input-text ">
                                                    </p>
                                                    <p class="form-row form-row-wide ">
                                                        <input type="password " class="input-text " placeholder="Password ">
                                                    </p>
                                                    <p class="form-row ">
                                                        <input type="submit " class="button " value="注册 ">
                                                    </p>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

							</c:when>
							<c:otherwise>
								      ${sessionScope.sessionUser.loginname }&nbsp;&nbsp;|&nbsp;&nbsp;
								  
								  <a href="<c:url value='/UserServlet?method=quit'/>" target="_parent">退出</a>
							</c:otherwise>
						</c:choose>
                            
                           


                            <a class="menu-bar mobile-navigation menu-toggle " href="# ">
                                <span></span>
                                <span></span>
                                <span></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-nav-container rows-space-20 ">
            <div class="container ">
                <div class="header-nav-wapper main-menu-wapper ">
                    <div class="vertical-wapper block-nav-categori ">
                        <div class="block-title ">
                            <span class="icon-bar ">
								<span></span>
                            <span></span>
                            <span></span>
                            </span>
                            <a href="#" ></a>
                            <span class="text ">商品目录</span>
                        </div>
                        <div class="block-content verticalmenu-content ">
                            <ul class="emeriss-nav-vertical vertical-menu emeriss-clone-mobile-menu ">
                                
                                <li class="menu-item menu-item-has-children ">
                                    <a title="Accessories " href="# " class="emeriss-menu-item-title ">二手书籍</a>
                                    <span class="toggle-submenu "></span>
                                    <ul role="menu " class=" submenu ">
                                        <li class="menu-item ">
                                            <a title="Audio " href="# " class="emeriss-item-title ">公共课</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a title="Clothing " href="# " class="emeriss-item-title ">学院</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a title="New Arrivals " href="# " class="emeriss-item-title ">其他</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item menu-item-has-children ">
                                
                                    <a title="Accessories " href="# " class="emeriss-menu-item-title ">二手服饰</a>
                                    <span class="toggle-submenu "></span>
                                    <ul role="menu " class=" submenu ">
                                        <li class="menu-item ">
                                            <a title="Audio " href="# " class="emeriss-item-title ">上衣</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a title="Clothing " href="# " class="emeriss-item-title ">下装</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a title="New Arrivals " href="# " class="emeriss-item-title ">鞋</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a title="Accessories " href="# " class="emeriss-item-title ">配饰</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item menu-item-has-children ">
                                    <a title="Accessories " href="# " class="emeriss-menu-item-title ">二手电子产品</a>
                                    <span class="toggle-submenu "></span>
                                    <ul role="menu " class=" submenu ">
                                        <li class="menu-item ">
                                            <a title="Audio " href="# " class="emeriss-item-title ">手机</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a title="Clothing " href="# " class="emeriss-item-title ">平板电脑</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a title="New Arrivals " href="# " class="emeriss-item-title ">电脑</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a title="Accessories " href="# " class="emeriss-item-title ">各种外设</a>
                                        </li>
                                        
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                  <a href="<c:url value='/CategoryServlet?method=findAll'/>">111</a>  
                    <div class="header-nav ">
                        <div class="container-wapper " id="menu">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- ----------------------------------------->
    <!-- -------------------header(mobile)------------------ -->
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
    <!-- --------------------------------------------------- -->

    <!-- -------------------contain-------------------------------- -->
    
    <div class="main-content main-content-404 right-sidebar">
    <div class="container">
        <div class="row">
            <div class="content-area content-404 col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="site-main">
                    <section class="error-404 not-found">
                        <div class="images">
                            <img src="<%=basePath %>user/assets/images/404.png" alt="img">
                        </div>
                        <div class="text-404">
                            <h1 class="page-title">
                                ${msg}
                            </h1>
                            <p class="page-content">
                                We´re sorry but the page you are looking for does nor exist. <br/>
                                You could return to
                                <a href="<%=basePath %>user/index.jsp" class="hightlight"> Home page!</a>
                               
                            </p>
                            
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
</div>
    
    
    <!-- ----------------------------------------------------------- -->
    
    
    
    
    
    
    <!-- -------------------footer(website)------------------------ -->
            <footer class="footer style7 ">
		<div class="container ">
			<div class="container-wapper ">
				<div class="row ">
					<div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-4 ">
						<div class="widget-box ">
							<div class="single-img ">
								<a href="<%=basePath%>user/index.jsp "><img
									src="<%=basePath%>user/assets/images/logo-light.png "
									alt="img "></a>
							</div>
							
						</div>
					</div>
					
					
					
						<div class="emeriss-socials ">
							<ul class="socials ">
								<li><a href="# " class="social-item " target="_blank ">
										<i class="icon fa fa-facebook "></i>
								</a></li>
								<li><a href="# " class="social-item " target="_blank ">
										<i class="icon fa fa-twitter "></i>
								</a></li>
								<li><a href="# " class="social-item " target="_blank ">
										<i class="icon fa fa-instagram "></i>
								</a></li>
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
								Copyright © 2020 <a href="# ">Emeriss</a> . All rights reserved
							</div>
						</div>
						
					</div>
				</div>
			</div>
		
	</footer>
            <!-- ---------------------------------------------------------- -->
            <!-- -------------------footer(mobile)------------------------- -->
            <div class="footer-device-mobile ">
                <div class="wapper ">
                    <div class="footer-device-mobile-item device-home ">
                        <a href="<%=basePath%>user/index.jsp ">
                            <span class="icon ">
						<i class="fa fa-home " aria-hidden="true "></i>
					</span> Home
                        </a>
                    </div>
                    <div class="footer-device-mobile-item device-home device-wishlist ">
                        <a href="# ">
                            <span class="icon ">
						<i class="fa fa-heart " aria-hidden="true "></i>
					</span> Wishlist
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
                        <a href="<%=basePath%>user/login.jsp ">
                            <span class="icon ">
						<i class="fa fa-user " aria-hidden="true "></i>
					</span> Account
                        </a>
                    </div>
                </div>
            </div>
            <!-- ---------------------------------------------------------- -->
            <!-- --------------------返回top-------------------------------- -->
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