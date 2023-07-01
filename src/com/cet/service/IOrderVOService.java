package com.cet.service;

import java.sql.SQLException;
import java.util.List;

import com.cet.domain.Order;
import com.cet.domain.OrderDetailVO;
import com.cet.domain.OrderVO;
import com.cet.domain.Page;

/**
 * @InterfaceName: IOrderVOService
 * @Description:Service层接口，提供获取OrderVO的分页对象，以在前端显示
 * 
 * @author: K
 */
public interface IOrderVOService extends IPageService<OrderVO> {

	@Override
	Page<OrderVO> get(int begin, int pageSize) throws SQLException;

	@Override
	Page<OrderVO> get(OrderVO orderFeature, int begin, int pageSize) throws SQLException;

}
