//com.chinasofti.service.IAdminLoginService.java

package com.library.service;

import com.library.pojo.dgq.AdminInfo;

public interface IAdminLoginService {
	/*
     * 管理员登录验证的Service层
     */
    AdminInfo selectByAdmin(AdminInfo admin);
    /*
     * 根据用户名查询，管理员是否存在
     */
    AdminInfo selectByAdminName(String adminName);
}
