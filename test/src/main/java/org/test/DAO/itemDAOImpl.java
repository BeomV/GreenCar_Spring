package org.test.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.test.domain.itemVO;
import org.test.DAO.itemDAO;

import javax.inject.Inject;
import java.util.List;

@Repository
public class itemDAOImpl implements itemDAO{
    @Inject
    SqlSession sql;

    @Override
    public List<itemVO> itemlist(itemVO itemVO) {
        return sql.selectList("itemmapper.itemlist",itemVO);
    }

    @Override
    public int itemtotal(itemVO itemVO) throws Exception {
        return (int) sql.selectOne("itemmapper.itemtotal", itemVO);
    }
}
