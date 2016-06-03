package com.logistics.mapper;

import java.util.List;

import com.logistics.model.EnterpriseMessage;
import com.logistics.model.GoodsMessage;

public interface EnterpriseMessageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(EnterpriseMessage record);

    int insertSelective(EnterpriseMessage record);

    EnterpriseMessage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(EnterpriseMessage record);

    int updateByPrimaryKey(EnterpriseMessage record);
    
    List<EnterpriseMessage> getAllEnterprises();
    
    List<EnterpriseMessage> getEnterpriseMsgByUser(String username);
}