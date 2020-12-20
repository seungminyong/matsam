package kr.or.matsam.test.service.impl;

import kr.or.matsam.common.entity.Combo;
import kr.or.matsam.test.service.ComboService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("comboService")
public class ComboServiceImpl implements ComboService {
    @Resource(name="comboMapper")
    ComboMapper comboMapper;

    @Override
    public List<Combo> listAll() throws Exception {
        return comboMapper.listAll();
    }

    @Override
    public void insert(Combo combo) throws Exception {
        comboMapper.insert(combo);
    }
}
