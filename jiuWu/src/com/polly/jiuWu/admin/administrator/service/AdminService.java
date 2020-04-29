package com.polly.jiuWu.admin.administrator.service;

import java.sql.SQLException;

import com.polly.jiuWu.admin.administrator.dao.AdminDao;
import com.polly.jiuWu.admin.administrator.domain.Admin;

public class AdminService {
	
private AdminDao adminDao = new AdminDao();
	
	/**
	 * 登录功能
	 * @param admin
	 * @return
	 */
	public Admin login(Admin admin) {
		try {
			return adminDao.find(admin.getAdminname(), admin.getAdminpwd());
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
