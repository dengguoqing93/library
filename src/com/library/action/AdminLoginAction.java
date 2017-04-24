//com.chinasofti.action.login.AdminLoginAction.java

package com.library.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.library.pojo.dgq.AdminInfo;
import com.library.service.IAdminLoginService;

@Controller
@RequestMapping(value="admin")
public class AdminLoginAction {
    
    @Autowired
    private IAdminLoginService adminLoginService;
    /**
     * 
     * @Title: loginVertify
     * @Description: 验证用户名和密码
     * @param    adminInfo
     * @return 跳转的页面
     * @throws 指明可抛出的异常
     */
    @RequestMapping(value="loginVertify",method=RequestMethod.POST,produces="text/html;charset=utf-8")
    @ResponseBody
    public String loginVertify(AdminInfo admin) {
        AdminInfo vertiyAdmin = adminLoginService.selectByAdmin(admin);
        if (vertiyAdmin == null) {
			return "true";
		}else {
			return "false";
		}
       
        
    }
    
    /*
     * 验证用户名是否存在
     */
    @RequestMapping(value="vertifyAdminName",method=RequestMethod.POST,produces="text/html;charset=utf-8")
    @ResponseBody
    public String VertifyAdminName(@RequestBody JSONObject jsonObject) {
    	AdminInfo admin = JSONObject.toJavaObject(jsonObject, AdminInfo.class);
        AdminInfo adminInfo = adminLoginService.selectByAdminName(admin.getUsername());
        if (adminInfo == null) {
            return "用户名不存在";
        }
        return null;
    }
    
}