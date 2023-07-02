
package com.cet.service;
/**
 * 提供获取答题卡交卷的方法
 *
 * @author wzr
 *
 * @param <T>
 */
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cet.domain.*;
import com.cet.exception.*;
public interface ISaverWritingService extends IPageService<User> {
    void save(String q, int startAnswerNum, int userId, int paperId) throws SQLException;
}