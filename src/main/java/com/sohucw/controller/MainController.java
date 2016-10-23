package com.sohucw.controller;

import com.sohucw.model.UserEntity;
import com.sohucw.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by baidu on 15/12/7.
 */

@Controller
@RequestMapping("/user")
public class MainController {

    @Autowired
    private UserRepository userRepository;

    // 首页
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        return "index";
    }

    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String users (ModelMap modelMap){
        // get all
        List<UserEntity> userList  = userRepository.findAll();
        // send records to  view 前端
        modelMap.addAttribute("userList",userList);


        return  "userManage";
    }
    @RequestMapping(value = "/addUser", method = RequestMethod.GET)
    public String addUser (){
        return  "addUser";
    }

    // 保存 form中的数据 到  数据库
    @RequestMapping(value = "/addUserPost", method = RequestMethod.POST)
    public String addUserPost (@ModelAttribute("user") UserEntity userEntity){

     //   userRepository.save(userEntity);

        userRepository.saveAndFlush(userEntity);

        return  "redirect:/user/users";
    }


    // 保存 form中的数据 到  数据库
    @RequestMapping(value = "/showUser/{userId}", method = RequestMethod.GET)
    public String showUser (@PathVariable("userId") Integer userId, ModelMap modelMap){

        UserEntity userEntity = userRepository.findOne(userId);
        modelMap.addAttribute("user", userEntity);
        return  "userDetail";
    }

    // modify
    @RequestMapping(value = "/updateUser/{userId}", method = RequestMethod.GET)
    public String updateUser (@PathVariable("userId") Integer userId, ModelMap modelMap){

        UserEntity userEntity = userRepository.findOne(userId);
        modelMap.addAttribute("user", userEntity);
        return  "updateUser";
    }

    @RequestMapping(value = "/updateUserPost", method = RequestMethod.POST)
    public String updateUserPost(@ModelAttribute("user") UserEntity userEntity) {
        // 更新用户信息
        userRepository.updateUser(userEntity.getFirstName(), userEntity.getLastName(),
                userEntity.getPassword(), userEntity.getId());
        return "redirect:/user/users";
    }

    // delete
    @RequestMapping(value = "/deleteUser/{userId}", method = RequestMethod.GET)
    public String deleteUser (@PathVariable("userId") Integer userId, ModelMap modelMap){

        userRepository.delete(userId);
       userRepository.flush();
        return  "redirect:/user/users";
    }

    @ResponseBody
    @RequestMapping(value = "/test",method = RequestMethod.GET)
    public Map<String, Object> test(String userName,String password) {
        System.out.println(userName);
        System.out.println(password);
        UserEntity user = new UserEntity();
        user.setFirstName("chen");
        user.setLastName("jinanwei");
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("success", true);
        map.put("data", user);
        return map;
    }
}
