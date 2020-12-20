package kr.or.matsam.test.service;

import kr.or.matsam.common.entity.Combo;

import java.util.List;

public interface ComboService {
    public List<Combo> listAll() throws Exception;
    public void insert(Combo combo) throws Exception;
}
