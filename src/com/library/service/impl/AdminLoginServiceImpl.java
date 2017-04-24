//com.chinasofti.service.impl.AdminLoginServiceImpl.java

package com.library.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.library.dao.dgq.AdminInfoMapper;
import com.library.pojo.dgq.AdminInfo;
import com.library.service.IAdminLoginService;

@Service
public class AdminLoginServiceImpl implements IAdminLoginService {
    
    @Autowired
    private AdminInfoMapper adminInfoMapper;
    
    @Override
    public AdminInfo selectByAdmin(AdminInfo admin) {
        
        return adminInfoMapper.selectByAdmin(admin);
    }

    public AdminInfoMapper getAdminInfoMapper() {
        return adminInfoMapper;
    }

    public void setAdminInfoMapper(AdminInfoMapper adminInfoMapper) {
        this.adminInfoMapper = adminInfoMapper;
    }

    @Override
    public AdminInfo selectByAdminName(String adminName) {
        
        return adminInfoMapper.selectByAdminName(adminName);
    }

    
}
