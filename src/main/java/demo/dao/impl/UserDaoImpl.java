package demo.dao.impl;

import demo.dao.UserDao;
import demo.model.User;
import org.springframework.stereotype.Repository;

/**
 * Created at 221
 * 16-7-10 下午2:44.
 */
@Repository
public class UserDaoImpl extends GenericDaoImpl<User, Integer> implements UserDao {
}
