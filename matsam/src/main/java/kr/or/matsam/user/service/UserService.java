package kr.or.matsam.user.service;

import com.resjoin.entity.ResjoinVO;
import com.user.entity.UserAuth;
import com.user.entity.UserVO;

import java.util.List;

public interface UserService {
	UserVO loginReg(UserVO userVO) throws Exception;
	int idCheck(String userEmail);
	int nicknameCheck(String userNicName);
	void join(UserVO userVO);
	void joinOwner(UserVO userVO);
	UserVO list(String userEmail);
	void modifyReg(UserVO userVO);
	void deleteReg(UserVO userVO);
	UserVO idSearchReg(UserVO userVO);
	void sendSMS(String userPhone, String authNum);
	UserVO passwordSearchReg(UserVO userVO);
	
	List<ResjoinVO> resSearch(String keyword);
	void passwordModify(UserVO userVO);
	int nicknameModify(String userNicName);
	void nicknameModifyReg(UserAuth userAuth);
}
