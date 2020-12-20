package kr.or.matsam.user.service.impl;

import java.util.List;

import javax.annotation.Resource;

import kr.or.matsam.manage.entity.ManageVO;
import kr.or.matsam.user.entity.UserAuth;
import kr.or.matsam.user.entity.UserVO;
import kr.or.matsam.user.service.UserService;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper mapper;

    @Override
    public UserVO loginReg(UserVO userVO) throws Exception {
        return mapper.loginReg(userVO);
    }

    @Override
    public int idCheck(String email) {
        return mapper.idCheck(email);
    }

    @Override
    public int nicknameCheck(String nickname) {
        // TODO Auto-generated method stub
        return mapper.nicknameCheck(nickname);
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
    public UserVO list(String email) {
        // TODO Auto-generated method stub
        return mapper.list(email);
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
        return mapper.idSearchReg(userVO);
    }

    @Override
    public void sendSMS(String phone, String authNum) {
        /*
        String api_key = "NCSNJ6PVQKVGBVH4";
        String api_secret = "OP5UJDPOUCZRFJPR2G3LQC06EWJW0UPN";
        Message coolsms = new Message(api_key, api_secret);

        // 4 params(to, from, type, text) are mandatory. must be filled
        HashMap<String, String> params = new HashMap<String, String>();
        params.put("to", phone);
        params.put("from", phone);
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

         */
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
	public int nicknameModify(String nickname) {
		// TODO Auto-generated method stub
		return mapper.nicknameModify(nickname);
		
	}

	@Override
	public void nicknameModifyReg(UserAuth userAuth) {
		// TODO Auto-generated method stub
		mapper.nicknameModifyReg(userAuth);
	}


}
