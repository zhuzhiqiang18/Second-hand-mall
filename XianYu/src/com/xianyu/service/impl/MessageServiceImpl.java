package com.xianyu.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xianyu.dao.BaseDaoImpl;
import com.xianyu.orm.Message;
import com.xianyu.service.MessageService;
@Service
@Transactional
public class MessageServiceImpl extends BaseDaoImpl<Message> implements MessageService{

}
