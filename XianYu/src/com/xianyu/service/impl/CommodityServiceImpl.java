package com.xianyu.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xianyu.dao.BaseDaoImpl;
import com.xianyu.orm.Commodity;
import com.xianyu.service.CommodityService;

@Service
@Transactional
public class CommodityServiceImpl extends BaseDaoImpl<Commodity> implements CommodityService{

}
