package com.portal.base;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;


@SuppressWarnings("unchecked")
public abstract class BaseDaoImpl<E> implements BaseDao<E> {

	@Resource
	private SessionFactory sessionFactory;
	
	private Class<E> clazz = null;
	
	public BaseDaoImpl(){
		//使用反射得到E的真是类型
		//获取当前new的对象 的泛型的父类
		ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
		this.clazz = (Class<E>) pt.getActualTypeArguments()[0];
	}
	
	/**
	 * 写成protected 是为了子类可以调用
	 * @return
	 */
	protected Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void save(E entity) {
		getSession().save(entity);
	}

	@Override
	public void delete(Long id) {
		Object obj = getById(id);
		if(obj !=null){
			getSession().delete(obj);
		}
	}

	@Override
	public void update(E entity) {
		getSession().update(entity);
	}

	@Override
	public E getById(Long id) {
		return (E)getSession().get(clazz, id);
	}

	
	@Override
	public List<E> findAll() {
		return getSession().createQuery("from "+clazz.getSimpleName())
							.list();
	}
	
}
