package shop.index.action;

import java.util.List;

import shop.category.service.CategoryService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import shop.category.vo.Category;
import shop.product.service.ProductService;
import shop.product.vo.Product;

/**
 * index页面
 * @author zhangchao
 *
 */
public class IndexAction extends ActionSupport {
	/**
	 *默认的执行方法
	 */
	//注入一级分类的Service:
	private CategoryService categoryService;
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	//注入商品的Service
	private ProductService productService;
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	
	public String execute(){
		//查询所有一级分类集合
		List<Category> cList = categoryService.findAll();
		//将一级分类存入到Session的范围
		ActionContext.getContext().getSession().put("cList", cList);
		//查询热门商品
		List<Product> hList = productService.findHot();
		//保存到值栈中
		ActionContext.getContext().getValueStack().set("hList", hList);
		//查询最新商品
		List<Product> nList = productService.findNew();
		//保存到值栈中
		ActionContext.getContext().getValueStack().set("nList", nList);
		return "index";
	}
}








