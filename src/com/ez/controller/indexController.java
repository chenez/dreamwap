package com.ez.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import utils.Sign;
import utils.StringUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;
import java.util.UUID;

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
    public String list(Model model, HttpServletRequest request){
        String jsapi_ticket = "jsapi_ticket";
        // 注意 URL 一定要动态获取，不能 hardcode
        String url = "http://example.com";
        Map<String, String> ret = Sign.sign(jsapi_ticket, url);
        for (Map.Entry entry : ret.entrySet()) {
            System.out.println(entry.getKey() + ", " + entry.getValue());
        }

        StringBuffer homeUrl = request.getRequestURL();
        String queryString =request.getQueryString();
        if(StringUtils.isNotBlank(queryString)){
            homeUrl.append("?").append(queryString);
        }

        long timestamp = System.currentTimeMillis() / 1000;

        String nonceStr = UUID.randomUUID().toString();

       /* String signature = SignUtil.getSignature(
                weiXinBaseService.getJsTicket(), nonceStr, timestamp,
                homeUrl.toString());*/

        /*logger.info("url="+homeUrl);
        logger.info("nonceStr=" + nonceStr);
        logger.info("timestamp=" + timestamp);
        logger.info("signature=" + signature);
        logger.info("appid=" + WebConfig.get("weixin.appid"));*/
        return "/ez/index/index";
    }
}
