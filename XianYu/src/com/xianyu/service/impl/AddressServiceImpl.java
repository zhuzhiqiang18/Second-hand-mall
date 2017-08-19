package com.xianyu.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xianyu.dao.BaseDaoImpl;
import com.xianyu.orm.Address;
import com.xianyu.service.AddressService;
@Service
@Transactional
/**
 *
 */
public class AddressServiceImpl extends BaseDaoImpl<Address> implements AddressService{

}
