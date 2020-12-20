package kr.or.matsam.image.service;

import kr.or.matsam.image.entity.ImageVO;

import java.util.List;

public interface ImageService {
    public void add(ImageVO imageVO) throws Exception;
    public List<ImageVO> selectById(int boardSerialNo) throws Exception;
}
