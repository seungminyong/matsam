package kr.or.matsam.admin.service;

import kr.or.matsam.admin.entity.AdminVO;
import kr.or.matsam.admin.entity.AuthInfo;

import java.util.List;

public interface AdminService {
    //아이디 검사 && 중복 검사
    AdminVO checkId(AdminVO adminVO) throws Exception;

    //로그인
    AuthInfo loginSession(AdminVO adminVO) throws Exception;

    //관리자 추가
    void insert(AdminVO adminVO) throws Exception;

    //전체 출력
    List<AdminVO> listAll() throws Exception;

    //상세 정보
    AdminVO detail(String admConno) throws Exception;

    //
}
