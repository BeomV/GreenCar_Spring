package org.test.controller;

import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.test.domain.reservationVO;
import org.test.service.reservationService;

import javax.inject.Inject;


@Controller
@Log4j
public class Subcontroller {



    @RequestMapping(value = "/info/subpage01", method = RequestMethod.GET)
    public String subpage01() throws Exception {
        return "info/subpage01";
    }

    @RequestMapping(value = "/info/subpage02", method = RequestMethod.GET)
    public String subpage02() throws Exception {
        return "info/subpage02";
    }





}