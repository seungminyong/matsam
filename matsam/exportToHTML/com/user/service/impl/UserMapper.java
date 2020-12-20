package com.user.service.impl;

import org.apache.ibatis.annotations.Mapper;

import com.user.entity.UserVO;

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
}
