package com.yezhou.controller;

import com.yezhou.model.UserEntity;
import com.yezhou.repository.UserRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by Johnn on 2017/2/9.
 */
@Controller
public class MainController {
    //自动装配数据库接口
    UserRepository userRepository;


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "index";/*请求返回index.jsp*/
    }

    @RequestMapping(value = "/admin/users", method = RequestMethod.GET)
    public String getUsers(ModelMap modelMap) {
        //查询user表中所有记录
        List<UserEntity> userList = userRepository.findAll();

//将所有记录传递给要返回的jsp页面，放在userList当中
        modelMap.addAttribute("userList", userList);

//返回pages目录下的admin/users.jsp页面
        return "admin/users";
    }
}
