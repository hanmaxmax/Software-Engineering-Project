
package com.cet.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cet.domain.*;
import com.cet.exception.*;
public interface ISaverWritingService extends IPageService<User> {
    void save(String q, int startAnswerNum, int userId, int paperId) throws SQLException;
}