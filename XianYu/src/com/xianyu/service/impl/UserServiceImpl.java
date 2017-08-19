package com.xianyu.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xianyu.dao.BaseDaoImpl;
import com.xianyu.orm.User;
import com.xianyu.service.UserService;

@Service
@Transactional
public class UserServiceImpl extends BaseDaoImpl<User> implements UserService{

}
