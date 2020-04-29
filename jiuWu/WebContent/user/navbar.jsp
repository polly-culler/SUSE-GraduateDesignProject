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
    
    <!-- navbar------------- -->
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

<body >
    <!-------------------- header(website) ---------------->
   <header class="header style7">
          
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
                  
                    <div class="header-nav ">
                        <div class="container-wapper " id="menu">
                            
                        </div>
                    </div>
          		    </div>
                </div>
            </div>
      
    </header>
    
    
    <!---------------------------------  -->
    ---------------------------------------
    
    
	    <div id="menu" class="container-wapper " >
	    
	    </div>
    
    
            <!-- ---------------------------------------------------------- -->
      	<!--<script src="<%=basePath%>user/assets/js/jquery-1.12.4.min.js "></script>
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
            <script src="<%=basePath%>user/assets/js/frontend-plugin.js "></script> -->	
</body>

</html>