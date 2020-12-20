package kr.or.matsam.user.service;

import kr.or.matsam.manage.entity.ManageVO;
import kr.or.matsam.user.entity.UserAuth;
import kr.or.matsam.user.entity.UserVO;

import java.util.List;


public interface UserService {
    /*
    List<UserVO> listAll() throws Exception;
    UserVO detail(String userSerialNo) throws Exception;
    void modify(String userSerialNo) throws Exception;
    List<UserVO> selectByGradeCd(String userGradeCd) throws Exception;
     */
    UserVO loginReg(UserVO userVO) throws Exception;
    int idCheck(String email);
    int nicknameCheck(String nickname);
    void join(UserVO userVO);
    void joinOwner(UserVO userVO);
    UserVO list(String email);
    void modifyReg(UserVO userVO);
    void deleteReg(UserVO userVO);
    UserVO idSearchReg(UserVO userVO);
    void sendSMS(String phone,String authNum);
    
    List<ManageVO> resSearch(String keyword);
	void passwordModify(UserVO userVO);
	int nicknameModify(String nickname);
	void nicknameModifyReg(UserAuth userAuth);
}
