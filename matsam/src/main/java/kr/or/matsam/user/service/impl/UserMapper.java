package kr.or.matsam.user.service.impl;

import com.resjoin.entity.ResjoinVO;
import com.user.entity.UserAuth;
import com.user.entity.UserVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserMapper {
	UserVO loginReg(UserVO userVO) throws Exception;
	int idCheck(String userEmail);
	int joinOwner(UserVO userVO);
	int nicknameCheck(String userNicName);
	int join(UserVO userVO);
	UserVO list(String userEmail);
	void modifyReg(UserVO userVO);
	void deleteReg(UserVO userVO);
	UserVO idSearchReg(UserVO userVO);
	void sendSMS(String phoner, String authNum);
	UserVO passwordSearchReg(UserVO userVO);
	List<ResjoinVO> resSearch(String keyword);
	void passwordModify(UserVO userVO);
	int nicknameModify(String userNicName);
	void nicknameModifyReg(UserAuth userAuth);
}
