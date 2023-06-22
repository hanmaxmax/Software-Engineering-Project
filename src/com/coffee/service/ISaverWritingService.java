
package com.coffee.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.coffee.domain.*;
import com.coffee.exception.*;
public interface ISaverWritingService extends IPageService<User> {
    void save(String q, int startAnswerNum) throws SQLException;
}