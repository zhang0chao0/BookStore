package shop.order.vo;

import shop.product.vo.Product;

/**
 * 订单项的实体
 * @author zhangchao
 *
 */

public class OrderItem {
	//订单项表主键
	private Integer itemid;
	//数量
	private Integer count;
	//订单达项总计
	private Double subtotal;
	//商品外键：某个商品
	private Product product;
	//订单外键：订单项多对1订单
	private Order order;
	public Integer getItemid() {
		return itemid;
	}
	public void setItemid(Integer itemid) {
		this.itemid = itemid;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public Double getSubtotal() {
		return subtotal;
	}
	public void setSubtotal(Double subtotal) {
		this.subtotal = subtotal;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	
}
