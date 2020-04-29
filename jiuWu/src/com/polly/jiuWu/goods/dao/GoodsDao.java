package com.polly.jiuWu.goods.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.polly.jiuWu.category.domain.Category;
import com.polly.jiuWu.goods.domain.Goods;
import com.polly.jiuWu.pager.Expression;
import com.polly.jiuWu.pager.PageBean;
import com.polly.jiuWu.pager.PageConstants;

import cn.itcast.commons.CommonUtils;
import cn.itcast.jdbc.TxQueryRunner;

public class GoodsDao {
	
private QueryRunner qr = new TxQueryRunner();
	
	/**
	 * 删除图书
	 * @param bid
	 * @throws SQLException 
	 */
	public void delete(String bid) throws SQLException {
		String sql = "delete from t_goods where gid=?";
		qr.update(sql, bid);
	}
	
	/**
	 * 修改图书
	 * @param book
	 * 		String sql = "insert into t_book(bid,bname,author,price,currPrice," +
				"discount,press,publishtime,edition,pageNum,wordNum,printtime," +
				"booksize,paper,cid,image_w,image_b)" +
	 * @throws SQLException 
	 */
	public void edit(Goods goods) throws SQLException {
		String sql = "update t_goods set gname=?,author=?,price=?,currPrice=?," +
				"discount=?,press=?,publishtime=?,edition=?,pageNum=?,wordNum=?," +
				"printtime=?,booksize=?,paper=?,cid=? where gid=?";
		Object[] params = {goods.getGname(),goods.getAuthor(),
				goods.getPrice(),goods.getCurrPrice(),goods.getDiscount(),
				goods.getPress(),goods.getPublishtime(),goods.getEdition(),
				goods.getPageNum(),goods.getWordNum(),goods.getPrinttime(),
				goods.getBooksize(),goods.getPaper(), 
			    goods.getCategory().getCid(),goods.getGid()};
		qr.update(sql, params);
	}
	
	/**
	 * 按bid查询
	 * @param bid
	 * @return
	 * @throws SQLException
	 */
	public Goods findByGid(String gid) throws SQLException {
		String sql = "SELECT * FROM t_goods g, t_category c WHERE g.cid=c.cid AND g.gid=?";
		// 一行记录中，包含了很多的book的属性，还有一个cid属性
		Map<String,Object> map = qr.query(sql, new MapHandler(), gid);
		// 把Map中除了cid以外的其他属性映射到Book对象中
		Goods goods = CommonUtils.toBean(map, Goods.class);
		// 把Map中cid属性映射到Category中，即这个Category只有cid
		Category category = CommonUtils.toBean(map, Category.class);
		// 两者建立关系
		goods.setCategory(category);
		
		// 把pid获取出来，创建一个Category parnet，把pid赋给它，然后再把parent赋给category
		if(map.get("pid") != null) {
			Category parent = new Category();
			parent.setCid((String)map.get("pid"));
			category.setParent(parent);
		}
		return goods;
	}
	
	/**
	 * 查询指定分类下图书的个数
	 * @param cid
	 * @return
	 * @throws SQLException
	 */
	public int findGoodsCountByCategory(String cid) throws SQLException {
		String sql = "select count(*) from t_goods where cid=?";
		Number cnt = (Number)qr.query(sql, new ScalarHandler(), cid);
		return cnt == null ? 0 : cnt.intValue();
	}
	
	/**
	 * 按分类查询
	 * @param cid
	 * @param pc
	 * @return
	 * @throws SQLException 
	 */
	public PageBean<Goods> findByCategory(String cid, int pc) throws SQLException {
		List<Expression> exprList = new ArrayList<Expression>();
		exprList.add(new Expression("cid", "=", cid));
		return findByCriteria(exprList, pc);
	}
	
	/**
	 * 按书名模糊查询
	 * @param bname
	 * @param pc
	 * @return
	 * @throws SQLException
	 */ 	
	public PageBean<Goods> findByGname(String gname, int pc) throws SQLException {
		List<Expression> exprList = new ArrayList<Expression>();
		exprList.add(new Expression("gname", "like", "%" + gname + "%"));
		return findByCriteria(exprList, pc);
	}
	
	/**
	 * 按作者查
	 * @param bname
	 * @param pc
	 * @return
	 * @throws SQLException
	 */
	public PageBean<Goods> findByAuthor(String author, int pc) throws SQLException {
		List<Expression> exprList = new ArrayList<Expression>();
		exprList.add(new Expression("author", "like", "%" + author + "%"));
		return findByCriteria(exprList, pc);
	}
	
	/**
	 * 按出版社查
	 * @param press
	 * @param pc
	 * @return
	 * @throws SQLException
	 */
	public PageBean<Goods> findByPress(String press, int pc) throws SQLException {
		List<Expression> exprList = new ArrayList<Expression>();
		exprList.add(new Expression("press", "like", "%" + press + "%"));
		return findByCriteria(exprList, pc);
	}
	
	/**
	 * 多条件组合查询
	 * @param combination
	 * @param pc
	 * @return
	 * @throws SQLException
	 */
	public PageBean<Goods> findByCombination(Goods criteria, int pc) throws SQLException {
		List<Expression> exprList = new ArrayList<Expression>();
		exprList.add(new Expression("gname", "like", "%" + criteria.getGname() + "%"));
		exprList.add(new Expression("author", "like", "%" + criteria.getAuthor() + "%"));
		exprList.add(new Expression("press", "like", "%" + criteria.getPress() + "%"));
		return findByCriteria(exprList, pc);
	}
	
	/**
	 * 通用的查询方法
	 * @param exprList
	 * @param pc
	 * @return
	 * @throws SQLException 
	 */
	private PageBean<Goods> findByCriteria(List<Expression> exprList, int pc) throws SQLException {
		/*
		 * 1. 得到ps
		 * 2. 得到tr
		 * 3. 得到beanList
		 * 4. 创建PageBean，返回
		 */
		/*
		 * 1. 得到ps
		 */
		int ps = PageConstants.GOODS_PAGE_SIZE;//每页记录数
		/*
		 * 2. 通过exprList来生成where子句
		 */
		StringBuilder whereSql = new StringBuilder(" where 1=1"); 
		List<Object> params = new ArrayList<Object>();//SQL中有问号，它是对应问号的值
		for(Expression expr : exprList) {
			/*
			 * 添加一个条件上，
			 * 1) 以and开头
			 * 2) 条件的名称
			 * 3) 条件的运算符，可以是=、!=、>、< ... is null，is null没有值
			 * 4) 如果条件不是is null，再追加问号，然后再向params中添加一与问号对应的值
			 */
			whereSql.append(" and ").append(expr.getName())
				.append(" ").append(expr.getOperator()).append(" ");
			// where 1=1 and bid = ?
			if(!expr.getOperator().equals("is null")) {
				whereSql.append("?");
				params.add(expr.getValue());
			}
		}

		/*
		 * 3. 总记录数 
		 */
		String sql = "select count(*) from t_goods" + whereSql;
		Number number = (Number)qr.query(sql, new ScalarHandler(), params.toArray());
		int tr = number.intValue();//得到了总记录数
		/*
		 * 4. 得到beanList，即当前页记录
		 */
		sql = "select * from t_goods" + whereSql + " order by orderBy limit ?,?";
		params.add((pc-1) * ps);//当前页首行记录的下标
		params.add(ps);//一共查询几行，就是每页记录数
		
		List<Goods> beanList = qr.query(sql, new BeanListHandler<Goods>(Goods.class), 
				params.toArray());
		
		/*
		 * 5. 创建PageBean，设置参数
		 */
		PageBean<Goods> pb = new PageBean<Goods>();
		/*
		 * 其中PageBean没有url，这个任务由Servlet完成
		 */
		pb.setBeanList(beanList);
		pb.setPc(pc);
		pb.setPs(ps);
		pb.setTr(tr);
		
		return pb;
	}
  
	/**
	 * 添加图书
	 * @param book
	 * @throws SQLException 
	 */
	public void add(Goods goods) throws SQLException {
		String sql = "insert into t_goods(gid,gname,author,price,currPrice," +
				"discount,press,publishtime,edition,pageNum,wordNum,printtime," +
				"booksize,paper,cid,image_w,image_b)" +
				" values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[] params = {goods.getGid(),goods.getGname(),goods.getAuthor(),
				goods.getPrice(),goods.getCurrPrice(),goods.getDiscount(),
				goods.getPress(),goods.getPublishtime(),goods.getEdition(),
				goods.getPageNum(),goods.getWordNum(),goods.getPrinttime(),
				goods.getBooksize(),goods.getPaper(), goods.getCategory().getCid(),
				goods.getImage_w(),goods.getImage_b()};
		qr.update(sql, params);
	}
	
}
