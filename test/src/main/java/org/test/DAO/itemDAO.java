package org.test.DAO;
import org.test.domain.itemVO;

import java.util.List;

public interface itemDAO {

    public List<itemVO> itemlist(itemVO itemVO);

    public int itemtotal(itemVO itemVO) throws Exception;
}
