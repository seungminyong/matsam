package kr.or.matsam.admin.service.impl;

import kr.or.matsam.admin.entity.AdminVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("adminMapper")
@Mapper
public interface AdminMapper {
    AdminVO checkId(AdminVO adminVO) throws Exception;
    void insert(AdminVO adminVO) throws Exception;
    List<AdminVO> listAll() throws Exception;
    AdminVO detail(String admConno) throws Exception;
}
