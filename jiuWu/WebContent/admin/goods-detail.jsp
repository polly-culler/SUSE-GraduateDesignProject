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
    <link rel="stylesheet" href="<%=basePath %>admin/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<%=basePath %>admin/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="<%=basePath %>admin/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<%=basePath %>admin/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="<%=basePath %>admin/css/_all-skins.min.css">
    <!-- Less -->
    <link rel="stylesheet" href="<%=basePath %>admin/css/normalize.less">
	<link rel="stylesheet" href="<%=basePath %>admin/css/scaffolding.less">
	<link rel="stylesheet" href="<%=basePath %>admin/css/navs.less">
	
    <link rel="stylesheet" href="<%=basePath %>admin/css/back-end.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
	<link href="<%=basePath %>admin/skins/flat/orange.css" rel="stylesheet">
	<!-- jQuery 3 -->
    <script src="<%=basePath%>admin/js/jquery.min.js"></script>
    <!-- personal -->
    <script src="<%=basePath %>admin/js/backend.js"></script>
	
	<style >
		.row {
		    	margin-right: 0px;
		        margin-left: 0px; 
		}
		a{
			color: #d79468;
		}
		.profile-user-img{
			width: 200px;
			border: 0px;
		}
		.nav-tabs-custom>.nav-tabs>li.active {
		    border-top-color: #d79468;
		}
	</style>
	<script>
	/* checkbox */
	
	</script>
	<script type="text/javascript">
	/* 页面显示切换 */
	$(function() {
		$("#checkBox").attr("checked", false);
		$("#formDiv").css("display", "none");
		$("#show").css("display", "");	
		
		// 操作和显示切换
		$("#checkBox").click(function() {
			
			if($(this).attr("checked")) {
				$("#show").css("display", "");
				$("#formDiv").css("display", "none");	
			} else {
				$("#show").css("display", "none");
				$("#formDiv").css("display", "");		
			}
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

	/*
	 * 点击编辑按钮时执行本函数
	 */
	function editForm() {
		$("#method").val("edit");
		$("#form").submit();
	}
	/*
	 * 点击删除按钮时执行本函数
	 */
	 function deleteForm() {
		$("#method").val("delete");
		$("#form").submit();	
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
                        <img src="<%=basePath %>admin/img/user1-128x128.jpg" class="img-circle" alt="User Image">
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
		      <h4>
		        <input type="checkbox" id="checkBox"><label for="box">编辑或删除</label>
		      </h4>
		      
		    </section>
		    <!-- Content -->
            <section class="content" >
            	<div class="row" id="show">
            		<div class="col-md-9">
	            		<div class="nav-tabs-custom">
	            			<div class="active tab-pane" id="activity">
	            				<div class="post">
		                  			<div class="user-block">
		                        		<span class="username">
				                          <a href="#">${goods.gname}</a>
				                        </span>
				                   </div>
				                   <!-- /.user-block -->
		                  		   <div class="row margin-bottom">
		                    		<div class="col-sm-6">
		                      			<img class="img-responsive" src="<c:url value='/${goods.image_w }'/>" alt="Photo">
		                    		</div>
		                    		<!-- /.col -->
		                    		<div class="col-sm-6">
		                      			<div class="row">
		                        			
		                          				<div class="box box-warning ">
		                          					<div class="box-body">
										              <strong>商品名</strong>
										
										              <p class="text-muted">
										                ${goods.gname}
										              </p>
										
										              <hr>
										
										              <strong><i class="fa fa-money margin-r-5"></i> 原价</strong>
										
										              <p class="text-muted"><i class="fa  fa-jpy margin-r-5"></i>${goods.price}</p>
										
										              <hr>
														
													  <strong><i class="fa fa-money margin-r-5"></i> 现价</strong>
										
										              <p class="text-muted"><i class="fa  fa-jpy margin-r-5"></i>${goods.currPrice}</p>
										
													  <hr>
										
										              <strong><i class="fa fa-file-text-o margin-r-5"></i> 各种描述</strong>
										
										              <p>${goods.press}</p>
										            </div>
		                          				</div>
		                        			
			                        		<!-- /.col -->
			                        		
		                      			</div>
	                      			<!-- /.row -->
	                    			</div>
			                    <!-- /.col -->
			                  </div>
			                  <!-- /.row -->
			
			                </div>
			               </div>
		                </div>
		            </div>
            	</div>
            	<div class="row" id='formDiv'>
            		<form class="form-horizontal" action="<c:url value='/AdminGoodsServlet'/>" method="post" id="form">
            			<input type="hidden" name="method" id="method"/>
	   					<input type="hidden" name="gid" value="${goods.gid }"/>
	         		<div class="col-md-3">
	
			          <!-- Profile Image -->
			          <div class="box box-warning">
			            <div class="box-body box-profile">
			              <img class="profile-user-img img-responsive " src="<c:url value='/${goods.image_w }'/>" alt="User profile picture">
			
			           </div>   
			          </div>
			        </div>
			          <!-- /.box -->
	               
	               	
	               		<div class="col-md-9">
	               		  
				          <div class="nav-tabs-custom">
				            <ul class="nav nav-tabs">
				              <li class="active"><a href="#settings" data-toggle="tab" aria-expanded="true">Settings</a></li>
				            </ul>
				            <div class="tab-content">
				              <!-- /.tab-pane -->
				              <div class="tab-pane active" id="settings">
				                
				                  	
				                  <div class="form-group">
				                    <label for="inputName" class="col-sm-2 control-label">商品名</label>
				                    <div class="col-sm-10">
				                      <input type="text" class="form-control" id="gname" name="gname" value="${goods.gname }">
				                    </div>
				                  </div>
				                  <div class="form-group">
				                    <label for="inputName" class="col-sm-2 control-label">现价</label>
				                    <div class="col-sm-10">
				                      <input type="text" class="form-control" id="currPrice" name="currPrice" value="${goods.currPrice }">
				                    </div>
				                  </div>
								  <div class="form-group">
				                    <label for="inputSkills" class="col-sm-2 control-label">原价</label>
				                    <div class="col-sm-10">
				                      <input type="text" class="form-control" id="price" name="price" value="${goods.price }">
				                    </div>
				                  </div>
				                  <div class="form-group">
				                    <label for="inputSkills" class="col-sm-2 control-label">作者/品牌名</label>
				                    <div class="col-sm-10">
				                      <input type="text" class="form-control" id="author" name="author" value="${goods.author }">
				                    </div>
				                  </div>
				                  <div class="form-group">
					                  <label class="col-sm-2 control-label">一级分类</label>
					                  <div class="col-sm-10">
					                  	<select class="form-control" name="pid" id="pid" onchange="loadChildren()">
					                   		<option value="">==请选择1级分类==</option>
											<c:forEach items="${parents }" var="parent">
	  											<option value="${parent.cid }" <c:if test="${goods.category.parent.cid eq parent.cid }">selected="selected"</c:if>>${parent.cname }</option>
											</c:forEach>				                   
					                  	</select>
					                  </div>
					              </div>
					              <div class="form-group">
					                  <label class="col-sm-2 control-label" >二级分类</label>
					                  <div class="col-sm-10">
					                  	<select class="form-control"  name="cid" id="cid">
					                   		<option value="">==请选择2级分类==</option>
											<c:forEach items="${children }" var="child">
	  											<option value="${child.cid }" <c:if test="${goods.category.cid eq child.cid }">selected="selected"</c:if>>${child.cname }</option>
											</c:forEach>
					                  	</select>
					                  </div>
					              </div>
				                  <div class="form-group">
				                    <label for="inputExperience" class="col-sm-2 control-label">商品描述</label>
				                    <div class="col-sm-10">
				                      <input class="form-control" id="press" name="press" value="${goods.press}">
				                    </div>
				                  </div>
				                  <div class="form-group">
				                    <div class="col-sm-offset-2 col-sm-10">
				                      <button type="submit" class="btn btn-warning" onclick="editForm()">编辑</button>
				                      <button type="submit" class="btn btn-danger" onclick="deleteForm()">删除</button>
				                    </div>
				                  </div>
				               
				              </div>
				              <!-- /.tab-pane -->
				            </div>
				            <!-- /.tab-content -->
				          </div>
				          <!-- /.nav-tabs-custom -->
				        
				               	
	               	</div>
	               	 </form>
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