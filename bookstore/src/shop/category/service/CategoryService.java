package shop.category.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import shop.category.dao.CategoryDao;
import shop.category.vo.Category;;

/**
 * 一级分类的业务层
 * @author zhangchao
 *
 */

@Transactional
public class CategoryService {
	// 注入CategoryDao
	private CategoryDao categoryDao;
	public void setCategoryDao(CategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}
	//查询所有的一级分类
	public List<Category> findAll() {
		return categoryDao.findAll();
	}
	//保存一级分类的操作
	public void save(Category category) {
		categoryDao.save(category);
	}
	//根据一级分类id查询一级分类
	public Category findByCid(Integer cid) {
		return categoryDao.findByCid(cid);
	}
	//业务层删除一级分类
	public void delete(Category category) {
		categoryDao.delete(category);
	}
	//业务层修改一级分类
	public void update(Category category) {
		categoryDao.update(category);
	}
	
}






