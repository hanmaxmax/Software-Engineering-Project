package com.cet.service;

import com.cet.domain.Page;
import com.cet.domain.User;
import com.cet.exception.UserExistException;

import java.sql.SQLException;
import java.util.List;

public interface IAutoMarkingService {

	public void loadAns(String path);

}