package kr.or.matsam.common.web;

import org.springframework.stereotype.Repository;

@Repository("sequence")
public class SequenceIncreasement {
    public String sequenceIncreasement(String target, String cateId) {
        String res = "";
        int no = 0;
        if(target == null || target == "") {
            target = cateId + "100001";
            res = target;
        }
        else {
            no = Integer.parseInt(target.split(cateId)[1]) + 1;
            res = cateId + no;
        }
        return res;
    }
}
