package org.test.DAO;
import org.test.domain.memberVO;
public interface memberDAO {
    public void register(memberVO vo) throws Exception;

    public memberVO login(memberVO vo) throws Exception;

    public void update(memberVO vo) throws  Exception;
}
