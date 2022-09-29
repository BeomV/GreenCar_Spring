package org.test.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.test.domain.reservationVO;

import javax.inject.Inject;


@Repository
public class reservationDAOImpl implements reservationDAO{
    @Inject
    SqlSession sql;

    @Override
    public void reservation(reservationVO vo) throws Exception{
        sql.insert("reservationmapper.reservation", vo);
    }
}
