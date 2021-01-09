package org.crazyit.common.dao.impl;

import org.hibernate.*;

import java.util.List;
import java.io.Serializable;

import org.crazyit.common.dao.*;

public class BaseDaoHibernate4<T> implements BaseDao<T> {
	// DAO������г־û������ײ�������SessionFactory���
	private SessionFactory sessionFactory;

	// ����ע��SessionFactory�����setter����
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public SessionFactory getSessionFactory() {
		return this.sessionFactory;
	}

	// ����ID����ʵ��
	@SuppressWarnings("unchecked")
	public T get(Class<T> entityClazz, Serializable id) {
		return (T) getSessionFactory().getCurrentSession().get(entityClazz, id);
	}

	// ����ʵ��
	public Serializable save(T entity) {
		return getSessionFactory().getCurrentSession().save(entity);
	}

	// ����ʵ��
	public void update(T entity) {
		getSessionFactory().getCurrentSession().saveOrUpdate(entity);
	}

	// ɾ��ʵ��
	public void delete(T entity) {
		getSessionFactory().getCurrentSession().delete(entity);
	}

	// ����IDɾ��ʵ��
	public void delete(Class<T> entityClazz, Serializable id) {
		getSessionFactory()
				.getCurrentSession()
				.createQuery(
						"delete " + entityClazz.getSimpleName()
								+ " en where en.id = ?0").setParameter("0", id)
				.executeUpdate();
	}

	// ��ȡ����ʵ��
	public List<T> findAll(Class<T> entityClazz) {
		return find("select en from " + entityClazz.getSimpleName() + " en");
	}

	// ����goods_id��ȡʵ��
	public List<T> findById(Class<T> entityClazz,Serializable goods_id) {
		
		String xx = String.format("select en from " + entityClazz.getSimpleName() + " en where en.goods_id='%s'",goods_id);
		
		return find(xx);
	}
	
	// ����goods_name��ȡʵ��
	public List<T> findByName(Class<T> entityClazz,Serializable goods_name,Serializable goods_type) {
		String xx;
		if(goods_type.toString().isEmpty())
			xx = String.format("select en from " + entityClazz.getSimpleName() + " en where en.goods_name like'%%%s%%'",goods_name);
		else
			xx = String.format("select en from " + entityClazz.getSimpleName() + " en where en.goods_name like'%%%s%%' and goods_type='%s'",goods_name,goods_type);
		
		return find(xx);
	}
	
	
	// ��ȡʵ������
	public long findCount(Class<T> entityClazz) {
		List<?> l = find("select count(*) from " + entityClazz.getSimpleName());
		// ���ز�ѯ�õ���ʵ������
		if (l != null && l.size() == 1) {
			return (Long) l.get(0);
		}
		return 0;
	}

	// ����HQL����ѯʵ��
	@SuppressWarnings("unchecked")
	protected List<T> find(String hql) {
		return (List<T>) getSessionFactory().getCurrentSession()
				.createQuery(hql).list();
	}

	// ���ݴ�ռλ������HQL����ѯʵ��
	@SuppressWarnings("unchecked")
	protected List<T> find(String hql, Object... params) {
		// ������ѯ
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		// Ϊ����ռλ����HQL������ò���
		for (int i = 0, len = params.length; i < len; i++) {
			query.setParameter(i + "", params[i]);
		}
		return (List<T>) query.list();
	}

	/**
	 * ʹ��hql �����з�ҳ��ѯ����
	 * 
	 * @param hql
	 *            ��Ҫ��ѯ��hql���
	 * @param pageNo
	 *            ��ѯ��pageNoҳ�ļ�¼
	 * @param pageSize
	 *            ÿҳ��Ҫ��ʾ�ļ�¼��
	 * @return ��ǰҳ�����м�¼
	 */
	@SuppressWarnings("unchecked")
	protected List<T> findByPage(String hql, int pageNo, int pageSize) {
		// ������ѯ
		return getSessionFactory().getCurrentSession().createQuery(hql)
				// ִ�з�ҳ
				.setFirstResult((pageNo - 1) * pageSize)
				.setMaxResults(pageSize).list();
	}

	/**
	 * ʹ��hql �����з�ҳ��ѯ����
	 * 
	 * @param hql
	 *            ��Ҫ��ѯ��hql���
	 * @param params
	 *            ���hql��ռλ��������params���ڴ���ռλ������
	 * @param pageNo
	 *            ��ѯ��pageNoҳ�ļ�¼
	 * @param pageSize
	 *            ÿҳ��Ҫ��ʾ�ļ�¼��
	 * @return ��ǰҳ�����м�¼
	 */
	@SuppressWarnings("unchecked")
	protected List<T> findByPage(String hql, int pageNo, int pageSize,
			Object... params) {
		// ������ѯ
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		// Ϊ����ռλ����HQL������ò���
		for (int i = 0, len = params.length; i < len; i++) {
			query.setParameter(i + "", params[i]);
		}
		// ִ�з�ҳ�������ز�ѯ���
		return query.setFirstResult((pageNo - 1) * pageSize)
				.setMaxResults(pageSize).list();
	}
}
