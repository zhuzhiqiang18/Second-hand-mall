package com.xianyu.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xianyu.dao.BaseDaoImpl;
import com.xianyu.orm.TuiJian;
import com.xianyu.service.TuiJianService;

@Service
@Transactional
public class TuiJianServiceImpl extends BaseDaoImpl<TuiJian> implements TuiJianService{

}
