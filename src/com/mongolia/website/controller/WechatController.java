package com.mongolia.website.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mongolia.website.manager.interfaces.WechatManager;
import com.mongolia.website.model.WechatAccountEntity;
import com.mongolia.website.util.SignUtil;

@Controller
@RequestMapping("/wechat")
@ResponseBody
public class WechatController {
	@Resource(name = "wechatManagerImpl")
	private WechatManager wechatManager;
	@ResponseBody
	@RequestMapping(value = "/index/{uid}", method = RequestMethod.GET, produces = "text/plain; charset=utf-8")
	public String wechatGet(@PathVariable String uid, String signature,
			String timestamp, String nonce, String echostr) {
		try {
			WechatAccountEntity wechatAccountEntity = wechatManager
					.getWechatAccountEntity(null);
			if (SignUtil.checkSignature(wechatAccountEntity.getAccounttoken(),
					signature, timestamp, nonce)) {
				return echostr;
			}
		}

		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "";
		}
		return echostr;
	}

	@ResponseBody
	@RequestMapping(value = "/index/{uid}", method = RequestMethod.POST, produces = "application/xml; charset=utf-8")
	public void wechatPost(HttpServletResponse response,
			HttpServletRequest reques) {
		//String respMessage = wechatService.coreService(reques);
		
	}

}
