package shop.cart.vo;

import shop.product.vo.Product;

/**
 * 购物项对象实体
 * @author zhangchao
 *
 */

public class CartItem {
	//购物项中商品信息
	private Product product;
	//购买某种商品数量
	private int count;
	//购买某种商品小计
	private double subtotal;
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	//小计自动计算的
	public double getSubtotal() {
		return count * product.getShop_price();
	}
}
