package com.ez.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
    public String list(Model model){
        return "/ez/index/index";
    }
}
