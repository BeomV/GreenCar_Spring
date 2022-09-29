package org.test.service;

import org.springframework.stereotype.Service;
import org.test.DAO.reservationDAO;
import org.test.domain.reservationVO;

import javax.inject.Inject;

@Service
public class reservationServiceImpl implements reservationService{

    @Inject
    reservationDAO dao;

    @Override
    public void reservation(reservationVO vo) throws Exception{
        dao.reservation(vo);
    }
}
