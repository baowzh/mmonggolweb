package com.mongolia.website.manager.impls;

import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mongolia.website.model.TextMessageResp;
import com.mongolia.website.util.MessageUtil;

@Service("wechatService")
@Transactional
public class WechatService {

	public String coreService(HttpServletRequest request) {
		String respMessage = null;
		TextMessageResp textMessage = new TextMessageResp();
		String fromUserName = "";
		String toUserName = "";
		try {
			// 默认返回的文本消息内容
			String respContent = "请求处理异常，请稍候尝试！";
			// xml请求解析
			Map<String, String> requestMap = MessageUtil.parseXml(request);
			fromUserName = requestMap.get("FromUserName");
			String openid = requestMap.get("FromUserName");
			// 公众帐号
			toUserName = requestMap.get("ToUserName");
			// 消息类型
			String msgType = requestMap.get("MsgType");
			String msgId = requestMap.get("MsgId");
			// 默认回复此文本消息
			textMessage.setToUserName(fromUserName);
			textMessage.setFromUserName(toUserName);
			textMessage.setCreateTime(new Date().getTime());
			textMessage.setMsgType(MessageUtil.RESP_MESSAGE_TYPE_TEXT);
			// 文本消息
			if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_TEXT)) {
				// 收到了文本消息
				// 根据收到的文本消息返回内容
			}
			// 图片消息
			else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_IMAGE)) {
				respContent = "您发送的是图片消息！";
				textMessage.setContent(respContent);
				respMessage = MessageUtil.textMessageToXml(textMessage);
			}
			// 地理位置消息
			else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_LOCATION)) {
				respContent = "您发送的是地理位置消息！";
				textMessage.setContent(respContent);
				respMessage = MessageUtil.textMessageToXml(textMessage);
			}
			// 链接消息
			else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_LINK)) {
				respContent = "您发送的是链接消息！";
				textMessage.setContent(respContent);
				respMessage = MessageUtil.textMessageToXml(textMessage);
			}
			// 音频消息
			else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_VOICE)) {
				respContent = "您发送的是音频消息！";
				textMessage.setContent(respContent);
				respMessage = MessageUtil.textMessageToXml(textMessage);
			}
			// 事件推送
			else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_EVENT)) {
				// 事件类型
				String eventType = requestMap.get("Event");
				// 订阅
				if (eventType.equals(MessageUtil.EVENT_TYPE_SUBSCRIBE)) {
					textMessage.setContent("谢谢您的关注");
					respMessage = MessageUtil.textMessageToXml(textMessage);
				}
				// 取消订阅
				else if (eventType.equals(MessageUtil.EVENT_TYPE_UNSUBSCRIBE)) {
					// 取消订阅后用户再收不到公众号发送的消息，因此不需要回复消息

				}
				// 自定义菜单点击事件
				else if (eventType.equals(MessageUtil.EVENT_TYPE_CLICK)) {

					// 如果是点击了优秀作品
				}

			}

		} catch (Exception e) {
			e.printStackTrace();
			textMessage.setToUserName(fromUserName);
			textMessage.setFromUserName(toUserName);
			textMessage.setCreateTime(new Date().getTime());
			textMessage.setMsgType(MessageUtil.RESP_MESSAGE_TYPE_TEXT);
			textMessage.setContent(e.getMessage());
			return MessageUtil.textMessageToXml(textMessage);
		}
		return respMessage;
	}

}
