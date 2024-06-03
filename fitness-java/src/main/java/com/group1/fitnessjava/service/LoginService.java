package com.group1.fitnessjava.service;

import com.group1.fitnessjava.dto.LoginDTO;
import com.group1.fitnessjava.result.Result;

public interface LoginService {
    public Result loginUser(LoginDTO loginDTO);
    public Result loginStaff(LoginDTO loginDTO);
}
