package com.xianyu.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xianyu.dao.BaseDaoImpl;
import com.xianyu.orm.LanMu;
import com.xianyu.service.LanMuService;

@Service
@Transactional
public class LanMuServiceImpl extends BaseDaoImpl<LanMu> implements LanMuService{

}
