package com.coffee.service;

import com.coffee.domain.Page;
import com.coffee.domain.User;
import com.coffee.exception.UserExistException;

import java.sql.SQLException;
import java.util.List;

public interface IAutoMarkingService {

	public void loadAns(String path);

}