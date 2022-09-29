package org.test.service;

import org.springframework.stereotype.Service;
import org.test.DAO.itemDAO;
import org.test.domain.itemVO;

import javax.inject.Inject;
import java.util.List;

@Service
public class itemServiceImpl implements itemService{

    @Inject
    itemDAO dao;

    @Override
    public List<itemVO> itemlist(itemVO itemVO){

        return dao.itemlist(itemVO);
    }

    @Override
    public int itemtotal(itemVO itemVO) throws Exception {
        return dao.itemtotal(itemVO);
    }


}
