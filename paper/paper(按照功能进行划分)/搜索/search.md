index.jsp-->.block-search-block

![image-20200414104231618](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20200414104231618.png)

主要代码：

```html
<form class="form-search form-search-width-category" action="<c:url value='/GoodsServlet'/>" method="post">
     <input type="hidden" name="method" value="findByGname"/>
     <div class="form-content">
         <div class="inner">
        	 <input type="text" class="input" name="gname" value="" placeholder="搜索">
         </div>
         <button class="btn-search" type="submit">
         	<span class="icon-search"></span>
         </button>
     </div>
 </form>
```

通过GoodsServlet向后台发送请求，通过findByGname找到相对应搜索的内容

（bookProducts.jsp/dressProducets.jsp/elecProducts.jsp）

判断搜索框的内容到指定的三个页面

