package org.test.service;

import org.test.domain.memberVO;

public interface memberService {
    public void register(memberVO vo) throws Exception;

    public memberVO login(memberVO vo) throws Exception;

    public void update(memberVO vo) throws Exception;
}
