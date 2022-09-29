package org.test.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.test.domain.memberVO;

import javax.inject.Inject;

@Repository
public class memberDAOImpl implements memberDAO{

    @Inject
    SqlSession sql;

    @Override
    public void register(memberVO vo) throws Exception{
        sql.insert("membermapper.register",vo);
    }

    @Override
    public memberVO login(memberVO vo) throws Exception {
        return sql.selectOne("membermapper.login", vo);
    }

    @Override
    public void update(memberVO vo) throws Exception{
        sql.update("membermapper.mypage", vo);
    }
}
