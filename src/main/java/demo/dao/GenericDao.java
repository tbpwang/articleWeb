package demo.dao;

import java.io.Serializable;
import java.util.List;

/**
 * Created at 221
 * 16-7-10 下午4:15.
 */
public interface GenericDao<T extends Serializable, ID extends Number> {

    void create(T t);

    List<T> query(String statement, T t);

    List<T> list();

    T search(ID id);

    void modify(T t);

    void remove(ID id);
}
