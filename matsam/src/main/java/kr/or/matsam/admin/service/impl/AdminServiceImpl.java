package kr.or.matsam.admin.service.impl;

import kr.or.matsam.admin.entity.AdminVO;
import kr.or.matsam.admin.entity.AuthInfo;
import kr.or.matsam.admin.service.AdminService;
import kr.or.matsam.admin.service.IdPasswordNotMatchingException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
    @Resource(name = "adminMapper")
    AdminMapper adminMapper;

    @Override
    public AdminVO checkId(AdminVO adminVO) throws Exception {
        return adminMapper.checkId(adminVO);
    }

    @Override
    public AuthInfo loginSession(AdminVO adminVO) throws Exception {
        System.out.println(adminVO.getAdmId());
        AdminVO admInfo = adminMapper.checkId(adminVO);
        System.out.println("============" + admInfo);
        if(admInfo == null) {
            throw new IdPasswordNotMatchingException();
        }

        if(!admInfo.matchPassword(adminVO.getAdmPassword())) {
            throw new IdPasswordNotMatchingException();
        }

        return new AuthInfo(admInfo.getAdmConno(), admInfo.getAdmId(), admInfo.getAdmName());
    }

    @Override
    public void insert(AdminVO adminVO) throws Exception {
        adminMapper.insert(adminVO);
    }

    @Override
    public List<AdminVO> listAll() throws Exception {
        return adminMapper.listAll();
    }

    @Override
    public AdminVO detail(String admConno) throws Exception {
        return adminMapper.detail(admConno);
    }
}
