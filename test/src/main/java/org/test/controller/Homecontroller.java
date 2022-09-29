package org.test.controller;

import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.test.domain.memberVO;
import org.test.service.memberService;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@Log4j
public class Homecontroller {

    @Inject
    memberService service;

    @RequestMapping("/")
    public String index() {
        log.info("index controller start!!");
        return "index";
    }

    @RequestMapping("/login")
    public String login() {
        log.info("index controller start!!");
        return "/login";
    }

    @RequestMapping("/register")
    public String registerpage() {
        log.info("register controller start!!");
        return "register";
    }



    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String postRegister(memberVO vo) throws Exception {
        log.info("post register");
        service.register(vo);
        return "/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(memberVO vo, HttpServletRequest req, RedirectAttributes rttr, Model model) throws Exception {
        log.info("post login");
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();
        memberVO login = service.login(vo);

        if(session.getAttribute("login") != null){
            session.removeAttribute("login");
        }

        if (login == null) {
            log.info("login failed");
            return "redirect:/login";


        } else {
            log.info("login Success");
            session.setAttribute("login", login);
            return "redirect:/";

        }



    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest req){

        HttpSession session = req.getSession();
        session.invalidate();
        return "index";

    }

    @RequestMapping(value = "/mypage", method = RequestMethod.GET)
    public String mypage() {

        return "mypage";
    }

    @RequestMapping(value = "/mypage", method = RequestMethod.POST)
    public String postUpdate(memberVO vo) throws Exception {
        log.info("post update");
        service.update(vo);
        return "/mypage";
    }

    @RequestMapping(value = "/forget", method = RequestMethod.GET)
    public String forgetID() {

        return "forget";
    }

    @RequestMapping(value = "/forgetpw", method = RequestMethod.GET)
    public String forgetPW() {

        return "forgetpw";
    }
}