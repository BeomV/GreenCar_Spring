package org.test.controller;

import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.test.domain.memberVO;
import org.test.service.memberService;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@Log4j
@RequestMapping("/member/*")
public class Meberlogincontroller {

    @Inject
    memberService service;
    @RequestMapping("/login")
    public String loginForm() {
        log.info("loginForm");
        return  "member/login";
    }

    public String login(memberVO invo, HttpSession session) throws Exception {
        log.info("login success");
        return "redirect:/index";
    }

    public String logout(HttpSession session) throws Exception {
        log.info("LogOut");
        return "redirect:/index";
    }
}