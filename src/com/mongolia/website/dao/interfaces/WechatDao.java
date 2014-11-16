package com.mongolia.website.dao.interfaces;

import java.util.List;

import com.mongolia.website.model.NewsItem;
import com.mongolia.website.model.WechatAccountEntity;

public interface WechatDao {
	public WechatAccountEntity getWechatAccountEntity(String appid)
			throws Exception;

	public void addnewitem(NewsItem newsItem) throws Exception;

	public List<NewsItem> getnewsItems(String accountid, String newsid)
			throws Exception;
}
