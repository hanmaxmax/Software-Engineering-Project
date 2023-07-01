package com.cet.service.impl;

import com.cet.dao.IItemHeatVODao;
import com.cet.dao.impl.ItemHeatVODaoImpl;
import com.cet.domain.ItemHeatVO;
import com.cet.service.IItemHeatVOService;

import java.sql.SQLException;
import java.util.List;

/**
 * @InterfaceName: ItemHeatVOServiceImpl
 * @Description:Service层,IItemHeatVOService的实现类，可以获取一个ItemHeatVO的列表，来供前端使用
 * 
 * @author: K
 */
public class ItemHeatVOServiceImpl implements IItemHeatVOService {
	private IItemHeatVODao itemHeatVODao = new ItemHeatVODaoImpl();

	@Override
	public List<ItemHeatVO> getAll() throws SQLException {
		return itemHeatVODao.findAll();
	}

}
