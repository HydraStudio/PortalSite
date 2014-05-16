package com.portal.base;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.portal.model.PageBean;
import com.portal.util.QueryHelper;


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
	
	// 公共的查询分页信息的方法（最终版）
	public PageBean searchPagination(int pageNum, int pageSize, QueryHelper queryHelper) {
		System.out.println("-------> DaoSupportImpl.getPageBean( int pageNum, int pageSize, QueryHelper queryHelper )");

		// 参数列表
		List<Object> parameters = queryHelper.getParameters();

		// 查询本页的数据列表
		Query listQuery = getSession().createQuery(queryHelper.getListQueryHql()); // 创建查询对象
		if (parameters != null) { // 设置参数
			for (int i = 0; i < parameters.size(); i++) {
				listQuery.setParameter(i, parameters.get(i));
			}
		}
		listQuery.setFirstResult((pageNum - 1) * pageSize);
		listQuery.setMaxResults(pageSize);
		List list = listQuery.list(); // 执行查询

		// 查询总记录数量
		Query countQuery = getSession().createQuery(queryHelper.getCountQueryHql());
		if (parameters != null) { // 设置参数
			for (int i = 0; i < parameters.size(); i++) {
				countQuery.setParameter(i, parameters.get(i));
			}
		}
		Long count = (Long) countQuery.uniqueResult(); // 执行查询

		return new PageBean(pageNum, pageSize, count.intValue(), list);
	}
}
