package com.mongolia.website.manager.impls;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mongolia.website.manager.interfaces.AutoResponseManager;
import com.mongolia.website.manager.interfaces.TextTemplateManager;
import com.mongolia.website.manager.interfaces.WechatService;
import com.mongolia.website.model.Article;
import com.mongolia.website.model.AutoResponse;
import com.mongolia.website.model.NewsItem;
import com.mongolia.website.model.NewsMessageResp;
import com.mongolia.website.model.TextMessageResp;
import com.mongolia.website.model.TextTemplate;
import com.mongolia.website.util.MessageUtil;

@Service("wechatServiceImpl")
@Transactional(rollbackFor = Exception.class)
public class WechatServiceImpl implements WechatService {
	@Resource(name = "autoResponseManagerImpl")
	private AutoResponseManager autoResponseManager;
	@Resource(name = "configInfo")
	private SysConfig sysConfig;
	@Resource(name = "textTemplateManagerImpl")
	private TextTemplateManager textTemplateManager;
	@Resource(name = "newsItemManagerImpl")
	private NewsItemManagerImpl newsItemManagerImpl;

	public String coreService(HttpServletRequest request) throws Exception {
		String respMessage = null;
		TextMessageResp textMessage = new TextMessageResp();
		String fromUserName = "";
		String toUserName = "";
		try {

		} catch (Exception ex) {
			throw ex;
		}
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
		respMessage = MessageUtil.textMessageToXml(textMessage);
		if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_TEXT)) {// 收到文本消息
			String content = requestMap.get("Content");
			AutoResponse autoResponse = findKey(content, toUserName);
			// 找到关键字
			if (autoResponse != null) {
				String resMsgType = autoResponse.getMsgtype();
				if ("text".equals(resMsgType)) {
					Map<String, Object> queryparams = new HashMap<String, Object>();
					queryparams.put("templatename",
							autoResponse.getTemplatename());
					List<TextTemplate> textTemplates = this.textTemplateManager
							.queryTextTemplate(queryparams);
					TextTemplate textTemplate = textTemplates.get(0);
					textMessage.setContent(textTemplate.getContent());
					respMessage = MessageUtil.textMessageToXml(textMessage);
				} else if ("news".equals(resMsgType)) {
					Map<String, Object> newitemparams = new HashMap<String, Object>();
					newitemparams.put("templatename",
							autoResponse.getTemplatename());
					newitemparams.put("responsecontent",
							autoResponse.getRescontent());
					List<NewsItem> newsList = this.newsItemManagerImpl
							.queryNewsItems(newitemparams);
					List<Article> articles = new ArrayList<Article>();
					for (NewsItem news : newsList) {
						Article article = new Article();
						article.setTitle(news.getTitle());
						article.setPicUrl(this.sysConfig.getSiteaddress() + "/"
								+ news.getImagePath());
						String url = "";
						url = news.getContent();
						article.setUrl(url);
						article.setDescription(news.getContent());
						articles.add(article);
					}
					NewsMessageResp newsResp = new NewsMessageResp();
					newsResp.setCreateTime(new Date().getTime());
					newsResp.setFromUserName(toUserName);
					newsResp.setToUserName(fromUserName);
					newsResp.setMsgType(MessageUtil.RESP_MESSAGE_TYPE_NEWS);
					newsResp.setArticleCount(newsList.size());
					newsResp.setArticles(articles);
					respMessage = MessageUtil.newsMessageToXml(newsResp);
				}

				//

			} else {
				// 返回默认的信息
			}

		} else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_IMAGE)) {// 收到图片消息

		} else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_LOCATION)) {// 收到地理位置

		} else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_LINK)) {// 收到连接消息

		} else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_VOICE)) {// 收到语音消息

		} else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_EVENT)) {// 收到事件

			// 目前没有设置
		}
		return "";
	}

	private AutoResponse findKey(String content, String accountId) {
		// 获取关键字管理的列表，匹配后返回信息
		Map<String, Object> prams = new HashMap<String, Object>();
		prams.put("accountId", accountId);
		try {
			List<AutoResponse> autoResponses = autoResponseManager
					.getAutoResponses(prams);
			for (AutoResponse r : autoResponses) {
				String kw = r.getKeyword();
				String[] allkw = kw.split(",");
				for (String k : allkw) {
					if (k.equalsIgnoreCase(content)) {
						return r;
					}
				}
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}
}
