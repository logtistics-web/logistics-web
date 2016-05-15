package com.logistics.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.logistics.mapper.AreaMapper;
import com.logistics.model.Area;
import com.logistics.service.AreaService;

@Service("AreaService")
public class AreaServiceImpl implements AreaService {
	
	@Autowired
	private AreaMapper areaMapper;
	
	public void insectArea(Area area, Integer parentId) {
		Area areaParent = areaMapper.selectByPrimaryKey(parentId);
		area.setParentid(parentId);
		area.setLft(areaParent.getRgt());
		area.setRgt(areaParent.getRgt()+1);
		areaMapper.updateRightData(areaParent.getRgt());
		areaMapper.insert(area);
	}

}
