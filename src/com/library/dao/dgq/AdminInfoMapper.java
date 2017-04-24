package com.library.dao.dgq;

import org.springframework.stereotype.Repository;

import com.library.pojo.dgq.AdminInfo;

@Repository
public interface AdminInfoMapper {
    int deleteByPrimaryKey(Long adminid);

    int insert(AdminInfo record);

    int insertSelective(AdminInfo record);

    AdminInfo selectByPrimaryKey(Long adminid);

    int updateByPrimaryKeySelective(AdminInfo record);

    int updateByPrimaryKey(AdminInfo record);
    /**
     * 
     * @Title: selectByAdmin
     * @Description: 查询用户,根据用户名和密码
     * @param    adminInfo
     * @return AdminInfo
     * @throws 指明可抛出的异常
     */
    AdminInfo selectByAdmin(AdminInfo admin);
    /*
     * 根据用户名查询
     */
    AdminInfo selectByAdminName(String adminName);
}