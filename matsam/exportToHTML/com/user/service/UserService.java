package com.user.service;

import com.user.entity.UserVO;

public interface UserService {
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
}
