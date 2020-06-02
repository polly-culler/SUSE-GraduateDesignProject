<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>旧物后台管理系统</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="<%=basePath%>admin/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<%=basePath%>admin/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="<%=basePath%>admin/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<%=basePath%>admin/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="<%=basePath%>admin/css/_all-skins.min.css">

    <link rel="stylesheet" href="<%=basePath%>admin/css/back-end.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
	<!-- jQuery 3 -->
    <script src="<%=basePath%>admin/js/jquery.min.js"></script>
	<script type="text/javascript">
	$(function () {
		
		$("#btn").click(function() {
			var gname = $("#gname").val();
			var currPrice = $("#currPrice").val();
			var price = $("#price").val();
			var author = $("#author").val();
			var press = $("#press").val();
			var pid = $("#pid").val();
			var cid = $("#cid").val();
			var image_w = $("#image_w").val();
			var image_b = $("#image_b").val();
			
			if(!bname || !currPrice || !price  || !author || !press || !pid || !cid || !image_w || !image_b) {
				alert("图名、当前价、定价、折扣、作者、出版社、1级分类、2级分类、大图、小图都不能为空！");
				return false;
			}
			
			if(isNaN(currPrice) || isNaN(price) ) {
				alert("当前价、定价、折扣必须是合法小数！");
				return false;
			}
			$("#form").submit();
		});
	});
	function loadChildren() {
		/*
		1. 获取pid
		2. 发出异步请求，功能之：
		  3. 得到一个数组
		  4. 获取cid元素(<select>)，把内部的<option>全部删除
		  5. 添加一个头（<option>请选择2级分类</option>）
		  6. 循环数组，把数组中每个对象转换成一个<option>添加到cid中
		*/
		// 1. 获取pid
		var pid = $("#pid").val();
		// 2. 发送异步请求
		$.ajax({
			async:true,
			cache:false,
			url:"/jiuWu/AdminGoodsServlet",
			data:{method:"ajaxFindChildren", pid:pid},
			type:"POST",
			dataType:"json",
			success:function(arr) {
				// 3. 得到cid，删除它的内容
				$("#cid").empty();//删除元素的子元素
				$("#cid").append($("<option>====请选择2级分类====</option>"));//4.添加头
				// 5. 循环遍历数组，把每个对象转换成<option>添加到cid中
				for(var i = 0; i < arr.length; i++) {
					var option = $("<option>").val(arr[i].cid).text(arr[i].cname);
					$("#cid").append(option);
				}
			}
		});
	}
	</script>

</head>

<body class="hold-transition sidebar-mini">
    <div class="wrapper">

        <header class="main-header">
            <!-- Logo -->
            <a href="<%=basePath%>admin/admin.jsp" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"></span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg">旧物后台管理</span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>

                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="<%=basePath%>admin/img/user1-128x128.jpg" class="user-image" alt="User Image">
                                <span class="hidden-xs">管理员：admin</span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header">
                                    <img src="<%=basePath%>admin/img/user1-128x128.jpg" class="img-circle" alt="User Image">

                                    <p>
                                        管理员：admin
                                        <small>Member since Nov. 2012</small>
                                    </p>
                                </li>

                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="#" class="btn btn-default btn-flat">Profile</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <!-- Control Sidebar Toggle Button -->
                        <li>
                            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="<%=basePath%>admin/img/user1-128x128.jpg" class="img-circle" alt="User Image">
                    </div>
                    <div class="pull-left info">
                        <p>管理员：admin</p>
                        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                    </div>
                </div>

                <!-- sidebar menu: : style can be found in sidebar.less -->
                <ul class="sidebar-menu" data-widget="tree">
                    <li>
                        <a href="<%=basePath%>admin/category.jsp">
                            <i class="fa fa-list-alt"></i> <span>分类管理</span>

                        </a>

                    </li>
                    <li class="treeview active">
                        <a href="#">
                            <i class="fa fa-table"></i> <span>商品管理</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="#"><i class="fa fa-circle-o"></i>二手书籍</a></li>
                            <li><a href="#"><i class="fa fa-circle-o"></i> 二手电子商品</a></li>
                            <li><a href="#"><i class="fa fa-circle-o"></i> 二手服饰</a></li>
                        </ul>
                    </li>
                    <li class="">
                        <a href="<%=basePath%>admin/order.jsp">
                            <i class="fa fa-list-alt"></i> <span>订单管理</span>

                        </a>

                    </li>
                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                   	添加商品
                </h1>
            </section>
            <section class="content">
            	<div class="row">
            		<div class="col-md-8">
            			<div class="box box-warning">
				            <div class="box-header with-border">
				              <h3 class="box-title">添加商品</h3>
				            </div>
				            <!-- /.box-header -->
				            <!-- form start -->
				            <form  action="<c:url value='/AdminAddGoodsServlet'/>" enctype="multipart/form-data" method="post" id="form">
				              <input type="hidden" name="doPost" value="${goods.gid }"/>
				              <div class="box-body">
				                <div class="form-group">
				                  <label for="exampleInputEmail1">商品名</label>
				                  <input type="text" class="form-control" id="gname" name="gname" placeholder="商品名">
				                </div>
				                <div class="form-group">
				                  <label for="exampleInputEmail1">作者/产品品牌名</label>
				                  <input type="text" class="form-control" id="author" name="author" placeholder="作者/产品品牌名">
				                </div>
				                <div class="form-group">
				                  <label for="exampleInputPassword1">现价</label>
				                  <input type="text" class="form-control" id="currPrice" placeholder="20" name="currPrice">
				                </div>
				                <div class="form-group">
				                  <label for="exampleInputPassword1">原价</label>
				                  <input type="text" class="form-control" id="price" placeholder="40" name="price">
				                </div>
				                <div class="form-group">
				                  <label for="exampleInputPassword1">描述</label>
				                  <input type="text" class="form-control" id="press" placeholder="描述....." name="press">
				                </div>
				                <div class="form-group">
				                  <label for="exampleInputFile">上传图片1</label>
				                  <input type="file" id="exampleInputFile" name="image_w">
				                </div>
				                <div class="form-group">
				                  <label for="exampleInputFile">上传图片2</label>
				                  <input type="file" id="exampleInputFile" name="image_b">
				                </div>
				                <div class="form-group">
				                  <label>一级分类</label>
				                  <select class="form-control" name="pid" id="pid" onchange="loadChildren()">
				                    <c:forEach items="${parents }" var="parent">
						    			<option value="${parent.cid }">${parent.cname }</option>
									</c:forEach>
				                  </select>
				                </div>
				                <div class="form-group">
				                  <label>二级分类</label>
				                  <select class="form-control" name="cid" id="cid">
				                    
				                  </select>
				                </div>
				                
				              </div>
				              <!-- /.box-body -->
				
				              <div class="box-footer">
				                <button type="submit" class="btn btn-warning" formenctype="multipart/form-data">添加</button>
				              </div>
				            </form>
				          </div>	
            		</div>
            	</div>
            </section>
	            
	

        </div>
        <!-- /.content-wrapper -->
        <footer class="main-footer">
            <div class="pull-right hidden-xs">

            </div>
            <strong>Copyright &copy; 2014-2019 <a href="#">itszjypolly</a>.</strong> All rights reserved.
        </footer>

    </div>

    
    <!-- Bootstrap 3.3.7 -->
    <script src="<%=basePath%>admin/js/bootstrap.min.js"></script>
    <!-- Slimscroll -->
    <script src="<%=basePath%>admin/js/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="<%=basePath%>admin/js/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="<%=basePath%>admin/js/adminlte.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="<%=basePath%>admin/js/demo.js"></script>
</body>

</html>