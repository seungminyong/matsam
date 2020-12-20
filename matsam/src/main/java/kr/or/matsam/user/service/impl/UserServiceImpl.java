package kr.or.matsam.user.service.impl;

import kr.or.matsam.manage.entity.ManageVO;
import kr.or.matsam.user.entity.UserAuth;
import kr.or.matsam.user.entity.UserVO;
import kr.or.matsam.user.service.UserService;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
	@Resource
	private UserMapper mapper;
	
	@Override
	public UserVO loginReg(UserVO userVO) throws Exception {
		return mapper.loginReg(userVO);
	}

	@Override
	public int idCheck(String userEmail) {
		return mapper.idCheck(userEmail);
	}

	@Override
	public int nicknameCheck(String userNicName) {
		// TODO Auto-generated method stub
		return mapper.nicknameCheck(userNicName);
	}

	@Override
	public void join(UserVO userVO) {
		// TODO Auto-generated method stub
		 mapper.join(userVO);
	}

	@Override
	public void joinOwner(UserVO userVO) {
		// TODO Auto-generated method stub
		 mapper.joinOwner(userVO);
	}

	@Override
	public UserVO list(String userEmail) {
		// TODO Auto-generated method stub
		return mapper.list(userEmail);
	}

	@Override
	public void modifyReg(UserVO userVO) {
		mapper.modifyReg(userVO);	
	}

	@Override
	public void deleteReg(UserVO userVO) {
		mapper.deleteReg(userVO);
	}

	@Override
	public UserVO idSearchReg(UserVO userVO) {
		// TODO Auto-generated method stub
		System.out.println(userVO);
		return mapper.idSearchReg(userVO);
	}

	@Override
	public void sendSMS(String userPhone, String authNum) {
		String api_key = ""; //NCSNJ6PVQKVGBVH4
		String api_secret = ""; //OP5UJDPOUCZRFJPR2G3LQC06EWJW0UPN
		Message coolsms = new Message(api_key, api_secret);

		// 4 params(to, from, type, text) are mandatory. must be filled
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", userPhone);
		params.put("from", userPhone);
		params.put("type", "SMS");
		params.put("text", "인증번호는 [" + authNum+ "] 입니다.");
		params.put("app_version", "test app 1.2"); // application name and version

		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}
	}

	@Override
	public UserVO passwordSearchReg(UserVO userVO) {
		// TODO Auto-generated method stub
		return mapper.passwordSearchReg(userVO);
	}

	
	
	@Override
	public List<ManageVO> resSearch(String keyword) {
		// TODO Auto-generated method stub
		System.out.println(keyword);
		return mapper.resSearch(keyword);
	}

	@Override
	public void passwordModify(UserVO userVO) {
		// TODO Auto-generated method stub
		mapper.passwordModify(userVO);
	}

	@Override
	public int nicknameModify(String userNicName) {
		// TODO Auto-generated method stub
		return mapper.nicknameModify(userNicName);
		
	}

	@Override
	public void nicknameModifyReg(UserAuth userAuth) {
		// TODO Auto-generated method stub
		mapper.nicknameModifyReg(userAuth);
	}

	
}
