package shop.interceptor;

import org.apache.struts2.ServletActionContext;

import shop.adminuser.vo.AdminUser;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

/**
 * 拦截器功能，没有登录的用户是无法访问某页面的
 * @author zhangchao
 *
 */

public class PrivilegeInterceptor extends MethodFilterInterceptor{
	@Override
	protected String doIntercept(ActionInvocation actionInvocation) throws Exception {
		//判断是否登录，如果登录，放行，没有登录，跳转到登录页面.
		AdminUser adminUser = (AdminUser) ServletActionContext.getRequest()
				.getSession().getAttribute("existAdminUser");
		if(adminUser != null){
			//已经登录过
			return actionInvocation.invoke();
		}else{
			//跳转到登录页面
			ActionSupport support = (ActionSupport) actionInvocation.getAction();
			support.addActionError("您还没有登录!没有权限访问!");
			return ActionSupport.LOGIN;
		}
	}
}
