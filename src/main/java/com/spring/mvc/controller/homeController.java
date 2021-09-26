package com.spring.mvc.controller;

import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Log4j
public class homeController {

    @RequestMapping("/")
    public String home(){
    log.info("111111");
        return "home";
    }
}
