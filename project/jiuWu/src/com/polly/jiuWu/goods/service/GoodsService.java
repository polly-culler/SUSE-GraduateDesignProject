package com.polly.jiuWu.goods.service;

import java.sql.SQLException;

import com.polly.jiuWu.goods.dao.GoodsDao;
import com.polly.jiuWu.goods.domain.Goods;
import com.polly.jiuWu.pager.PageBean;

public class GoodsService {
	
private GoodsDao goodsDao = new GoodsDao();
	
	/**
	 * 删除图书
	 * @param bid
	 */
	public void delete(String gid) {
		try {
			goodsDao.delete(gid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 修改图书
	 * @param book
	 */
	public void edit(Goods goods) {
		try {
			goodsDao.edit(goods);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 返回当前分类下图书个数
	 * @param cid
	 * @return
	 */
	public int findGoodsCountByCategory(String cid) {
		try {
			return goodsDao.findGoodsCountByCategory(cid);
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 加载图书
	 * @param bid
	 * @return
	 */
	public Goods load(String gid) {
		try {
			return goodsDao.findByGid(gid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 按分类查
	 * @param cid
	 * @param pc
	 * @return
	 */
	public PageBean<Goods> findByCategory(String cid, int pc) {
		try {
			return goodsDao.findByCategory(cid, pc);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 按书名查
	 * @param bname
	 * @param pc
	 * @return
	 */
	public PageBean<Goods> findByGname(String gname, int pc) {
		try {
			return goodsDao.findByGname(gname, pc);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 按作者查
	 * @param author
	 * @param pc
	 * @return
	 */
	public PageBean<Goods> findByAuthor(String author, int pc) {
		try {
			return goodsDao.findByAuthor(author, pc);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 按出版社查
	 * @param press
	 * @param pc
	 * @return
	 */
	public PageBean<Goods> findByPress(String press, int pc) {
		try {
			return goodsDao.findByPress(press, pc);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 多条件组合查询
	 * @param criteria
	 * @param pc
	 * @return
	 */
	public PageBean<Goods> findByCombination(Goods criteria, int pc) {
		try {
			return goodsDao.findByCombination(criteria, pc);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * 添加图书
	 * @param book
	 */
	public void add(Goods goods) {
		try {
			goodsDao.add(goods);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
