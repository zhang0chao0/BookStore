package shop.utils;

import java.util.UUID;

/**
 * 生成随机的字符串，当做激活码
 * @author zhangchao
 *
 */
public class UUIDUtils {
	/**
	 * 获得随机的字符串
	 * @return
	 */
	public static String getUUID(){
		return UUID.randomUUID().toString().replace("-", "");
	}
}
