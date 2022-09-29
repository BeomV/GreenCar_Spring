package org.test.service;

import org.test.domain.itemVO;

import java.util.List;

public interface itemService {
   public List<itemVO> itemlist(itemVO itemVO) throws Exception;

   public int itemtotal(itemVO itemVO) throws Exception;

}
