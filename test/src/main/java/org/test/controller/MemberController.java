package org.test.controller;

import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.test.domain.itemVO;
import org.test.service.itemService;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@Log4j
public class MemberController {

    @Inject
    itemService service;



    @RequestMapping(value="/list", method=RequestMethod.GET)
    public String itemlist(itemVO itemVO, Model model) throws Exception {

        int total = service.itemtotal(itemVO);
        int totalpage = (int) Math.ceil((double)total/10);

        int viewPage = itemVO.getViewPage();
        // 1 -> 1,10
        // 2 -> 11,20


        if(viewPage == 1) {
            int startIndex = 0;
            int endIndex = 9;
            itemVO.setStartIndex(startIndex);
            itemVO.setEndIndex(endIndex);
        }
        else{
            int startIndex = ( viewPage - 1 ) * 10 - 1;
            int endIndex = 9 ;
            itemVO.setStartIndex(startIndex);
            itemVO.setEndIndex(endIndex);
        }




        List<itemVO> list = service.itemlist(itemVO);

        model.addAttribute("total", total);
        model.addAttribute("totalpage", totalpage);
        model.addAttribute("list", list);
        log.info(totalpage);

        return "list";
    }



}