package com.example.pta.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.pta.mapper.TestMapper;

@Service
public class TestServiceImpl implements TestService{

    @Autowired
    private TestMapper testMapper;

    @Override
    public String dbCheck(){
        return testMapper.dbCheck();
    }
}
