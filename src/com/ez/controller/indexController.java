package com.ez.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by chenez on 2017/4/11.
 */
@Controller
@RequestMapping(value="/ez/")
public class indexController {


    /**
     * 跳到列表页面
     * @return
     */
    @RequestMapping(value="index")
    public String list(Model model,@RequestParam(value="title", defaultValue="职业规划成功指数") String title){
        model.addAttribute("title",title);
        return "/ez/index/index";
    }
}
