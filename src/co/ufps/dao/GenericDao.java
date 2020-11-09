package co.ufps.dao;

import java.io.Serializable;
import java.util.List;

public interface GenericDao<T> extends Serializable {
	public List<T> list();
	public <E> T find(E id);
	public void insert(T o);
	public void update(T o);
	public void delete(T o);
}
