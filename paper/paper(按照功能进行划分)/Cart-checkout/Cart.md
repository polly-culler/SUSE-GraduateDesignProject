购物车主要功能部件

#### 购物车页面

![ShoppingCart](H:\SUSE\毕业设计\paper(按照功能进行划分)\Cart-checkout\ShoppingCart.png)

------

前端：

该购物车页面主要通过<table>表格，并将表格嵌套到form表单下，form表单中method和action属性的值分别为post和CartItemServlet。商品的内容通过<table>标签中的<tbody>来显示，单个商品占据一行<tr>,商品的信息占据5列<td>,分别显示商品图片，商品名，商品购买数量，小计，删除商品。第二行<tr>则用来显示促销码和总计信息。

其中点击商品图片和商品名均可跳转到商品详细信息页面，通过为<a>标签中的herf属性添加为<c:url value='/user/productDeatil.jsp'/>即可跳转。

商品购买数量、小计、删除商品都在标签的id属性中通过jquery添加了该商品的id值（${cartItem.cartItemId }）

其中商品图片的路径为<c:url value='/${cartItem.goods.image_b }'/>，商品名通过${cartItem.goods.gname }表示，商品数量通过${cartItem.quantity }表示，商品小计通过${cartItem.subtotal }表示。

页面通过使用jsp的<c:forEach>标签，将该用户添加到购物车的所有商品迭代出来。<c:forEach>标签需嵌套在商品信息显示行<tr>标签的外部，并设置<c:forEach>标签items属性值为${cartItemList }，即将被循环的信息；而变量var属性的值为cartItem。

若用户想付款可直接点击付款按钮，进入付款页面。若还想继续浏览商品进行挑选，可点击继续购物按钮，进入改商城的首页。

------

1.减号和加号修改数量

 	1.1为减号和加号添加click事件。两个click事件均进行获取商品id、获取输入框中的数据、将添加或减少的数据传递到输入框（#Quantity）中。修改后的数量数据需要通过sendUpdateQuantity()方法调用。sendUpdateQuantity() 包含商品地址（id）和修改后的输入框中的数量（quantity）两个参数。通过ajax使用CartItemServlet中的updateQuantity将id和quantity传递给后台数据库，成功后，将数量的数据修改，同时也将该商品的小计（#Subtotal）进行修改，然后调用showTotal（）方法，将总价格显示到总计（#total）所在的<label>标签所在的位置上。

​		在为减号button添加的click事件中需要在获取输入框的数据后，进行判断输入框中的数据是否为1。若输入框中的数据为1，用户继续点击减号button的条件下，弹出“你是否真要删除改商品”的弹出框提示；若用户在弹出提示框上点击确认后，将调用CartItemServlet中的batchDelete方法通过商品的Id（cartItemIds）将该商品删除。

2.总计

​	2.1 计算所有商品的总价格使用showTotal（）方法，该方法使用each（）函数将所有小计（.Subtotal）的数据相加，然后将结果显示在总计（#total）上，并且通过round（，2）函数为总计保留两位小数

3.删除

点击删除按钮将直接调用CartItemServlet中的batchDelete方法，直接将该商品进行删除

```html
<a href="<c:url value='/CartItemServlet?method=batchDelete&cartItemIds=${cartItem.cartItemId }'/>" class="remove "></a>
```

#### 结算页面

