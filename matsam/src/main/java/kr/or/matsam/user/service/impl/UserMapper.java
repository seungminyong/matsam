package kr.or.matsam.user.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.matsam.manage.entity.ManageVO;
import kr.or.matsam.user.entity.UserAuth;
import kr.or.matsam.user.entity.UserVO;

@Mapper
public interface UserMapper {

        UserVO loginReg(UserVO userVO) throws Exception;
        int idCheck(String email);
        int joinOwner(UserVO userVO);
        int nicknameCheck(String nickname);
        int join(UserVO userVO);
        UserVO list(String email);
        void modifyReg(UserVO userVO);
        void deleteReg(UserVO userVO);
        UserVO idSearchReg(UserVO userVO);
        void sendSMS(String phoner,String authNum);
        UserVO passwordSearchReg(UserVO userVO);
    	List<ManageVO> resSearch(String keyword);
    	void passwordModify(UserVO userVO);
    	int nicknameModify(String nickname);
    	void nicknameModifyReg(UserAuth userAuth);

}
