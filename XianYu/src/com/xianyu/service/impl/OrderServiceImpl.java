package com.xianyu.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xianyu.dao.BaseDaoImpl;
import com.xianyu.orm.Orders;
import com.xianyu.service.OrderService;
@Service
@Transactional
public class OrderServiceImpl extends BaseDaoImpl<Orders> implements OrderService{

}
