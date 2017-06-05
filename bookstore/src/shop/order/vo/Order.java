package shop.order.vo;

//import java.util.Date;
import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

import shop.user.vo.User;

/**
 * 订单的实体类，跟表Order内容一样
 * @author zhangchao
 *
 */

public class Order {
	//订单的主键，订单号
	private Integer oid;
	//订单总计
	private Double total;
	//订单时间
	private Date ordertime;
	//表示订单的状态：1.未付款 2.订单已经付款 3.已经发货 4.订单结束
	private Integer state;
	//用户名
	private String name;
	//用户电话号码
	private String phone;
	//用户地址
	private String addr;
	//用户的外键：对象（下订单的用户）
	private User user;
	//1对多，一个订单有若干订单项
	private Set<OrderItem> orderItems = new HashSet<OrderItem>();
	public Integer getOid() {
		return oid;
	}
	public void setOid(Integer oid) {
		this.oid = oid;
	}
	public Double getTotal() {
		return total;
	}
	public void setTotal(Double total) {
		this.total = total;
	}
	public Date getOrdertime() {
		return ordertime;
	}
	public void setOrdertime(Date ordertime) {
		this.ordertime = ordertime;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Set<OrderItem> getOrderItems() {
		return orderItems;
	}
	public void setOrderItems(Set<OrderItem> orderItems) {
		this.orderItems = orderItems;
	}
	
}
