package kr.or.matsam.test.service.impl;

import kr.or.matsam.common.entity.Combo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("comboMapper")
@Mapper
public interface ComboMapper {
    public List<Combo> listAll() throws Exception;
    public void insert(Combo combo) throws Exception;
}
