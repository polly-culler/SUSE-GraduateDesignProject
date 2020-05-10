![login-register-index](H:\SUSE\毕业设计\paper(按照功能进行划分)\登录-注册\login-register-index.png)

![](H:\SUSE\毕业设计\paper(按照功能进行划分)\登录-注册\login-register-login.png)

t_user表:loginname、loginpass、email

| 登录     | 用户名         | 密码                     |
| -------- | -------------- | ------------------------ |
| 测试需求 | 1.3-20个字符内 | 1.含中英文、不含特殊符号 |

| 注册     | 邮箱                 | 用户名         | 密码                     |
| -------- | -------------------- | -------------- | ------------------------ |
| 测试需求 | 1.邮箱的标准输入方式 | 1.3-20个字符内 | 1.含中英文、不含特殊符号 |

功能模块实现：

#### 登录/注册

##### **页面验证**：

​	**用户名、email、密码：register.js**

​		1.表单检验，自身校验

​		2.输入框得到焦点，隐藏错误信息

​		3.输入框失去焦点，进行校验

​		4.提交时进行所有输入框校验

###### 部分效果实现：（JavaScript）

##### **后台验证：**

​	  **用户名、邮箱**：（验证码）

​		1.用户名，邮箱是否注册

​		*2.验证码是否正确，是否可用*

###### 效果实现：

详情：

对应的servlet->/UserServlet

`<input type="hidden" name="method" value="regist"/>//此处value="regist"为请求方法`

step1:

UserServlet 进行校验查看：

​	1.用户名是否注册 	

​	2.email是否注册	

​	3.验证码是否正确

step2：

UserServlet进行调用UserService，校验：

​	1.用户名	

​	2.email

step3：

UserService进行调用UserDao，校验：

​	1.用户名	

​	2.email

step4：

UserServlet将结果返回给页面

注：

其中校验是通过Ajax校验，主要校验方法（regist.js）

`$ajax({ `

`url:Servlet地址,`

`data参数,`

`type:Post,`

`dataType:json,`

`async:异步请求,`

`cache:缓存,`

`success:function()服务器执行成功后调用的方法`

`});`

例：

`$.ajax({
		url:"/goods/UserServlet",//要请求的servlet
		data:{method:"ajaxValidateLoginname", loginname:value},//给服务器的参数
		type:"POST",
		dataType:"json",
		async:false,//是否异步请求，如果是异步，那么不会等服务器返回，我们这个函数就向下运行了。
		cache:false,
		success:function(result) {
			if(!result) {//如果校验失败
				$("#" + id + "Error").text("用户名已被注册！");
				showError($("#" + id + "Error"));
				return false;
			}
		}
	});`	

​	忘记密码：页面跳转到密码修改页面（passwordForget.jsp）

##### 注册提交按钮：

`UserServlet#regist{ `

`1.封装表单数据到JavaBean中`

`2.校验参数`

`3.把表单数据给service完成业务`

`4.保存成功信息`

`5.转发到页面显示成功信息`

`}`

![image-20200402211928435](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20200402211928435.png)

##### **遇到的问题及解决方法：**

1.html转换为jsp

​	

		<%@ page language="java" import="java.util.*" >
		<%
			String path = request.getContextPath();
			String basePath = request.getScheme()+"://"+request.getServerName()+":"
	        		+request.getServerPort()+path+"/";			
		%>
		<link rel="stylesheet" href="<%=basePath%>user/assets/css/style.css">//将<%=basePath%>加入路径的前
