package org.test.controller;

import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.test.domain.itemVO;
import org.test.domain.memberVO;
import org.test.domain.reservationVO;
import org.test.service.itemService;
import org.test.service.reservationService;

import javax.inject.Inject;
import java.util.List;

@Controller
@Log4j
public class reservationController {

    @Inject
    reservationService service;

    @RequestMapping(value = "/reservation", method = RequestMethod.POST)
    public String postUpdate(reservationVO vo) throws Exception {
        log.info("post reservation");
        service.reservation(vo);
        return "redirect:/list";
    }




}