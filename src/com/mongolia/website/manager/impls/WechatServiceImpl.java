package com.mongolia.website.manager.impls;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.mongolia.website.manager.interfaces.WechatService;
import com.mongolia.website.util.MessageUtil;

public class WechatServiceImpl implements WechatService {
	public String coreService(HttpServletRequest request) {
		// 默认返回的文本消息内容
		String respContent = "请求处理异常，请稍候尝试！";
		// xml请求解析
		//Map<String, String> requestMap = MessageUtil.parseXml(request);
		// Map<String, String> requestMap = new HashMap<String, String>();
		//// // 发送方帐号（open_id）
		//fromUserName = requestMap.get("FromUserName");
		//String openid = requestMap.get("FromUserName");
		// 公众帐号
		//toUserName = requestMap.get("ToUserName");
		// 消息类型
	//	String msgType = requestMap.get("MsgType");
		//String msgId = requestMap.get("MsgId");
		return "";
	}
}
