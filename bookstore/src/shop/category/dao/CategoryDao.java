package shop.category.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import shop.category.vo.Category;

public class CategoryDao extends HibernateDaoSupport {
	
	//DAO层的查询所有一级分类的方法
	public List<Category> findAll() {
		String hql = "from Category";
		List<Category> list = this.getHibernateTemplate().find(hql);
		return list;
	}
	//保存一级分类的方法
	public void save(Category category) {
		this.getHibernateTemplate().save(category);
	}
	//根据一级分类id查询一级分类
	public Category findByCid(Integer cid) {
		return this.getHibernateTemplate().get(Category.class, cid);
	}
	//删除一级分类
	public void delete(Category category) {
		this.getHibernateTemplate().delete(category);
	}
	//修改一级分类
	public void update(Category category) {
		this.getHibernateTemplate().update(category);
	}
	
}







