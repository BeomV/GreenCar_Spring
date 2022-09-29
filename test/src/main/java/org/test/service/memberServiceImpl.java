package org.test.service;

import org.springframework.stereotype.Service;
import org.test.DAO.memberDAO;
import org.test.domain.memberVO;

import javax.inject.Inject;

@Service
public class memberServiceImpl implements memberService{

    @Inject
    memberDAO dao;

    @Override
    public void register(memberVO vo) throws Exception{
        dao.register(vo);
    }

    @Override
    public memberVO login(memberVO vo) throws Exception{
        return dao.login(vo);
    }

    @Override
    public void update(memberVO vo) throws Exception{
        dao.update(vo);
    }
}
