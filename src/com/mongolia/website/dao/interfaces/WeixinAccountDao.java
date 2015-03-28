package com.mongolia.website.dao.interfaces;

import java.util.List;
import java.util.Map;

import com.mongolia.website.model.AccessTokenYw;
import com.mongolia.website.model.PagingPrams;
import com.mongolia.website.model.WeixinAccountEntity;

/**
 * 微信账户dao
 * 
 * @author dell
 * 
 */
public interface WeixinAccountDao 
		 {
	public List<WeixinAccountEntity> getAccountByUserName(String username);

	public WeixinAccountEntity getAccountById(String id);

	public void saveOrUpdate(WeixinAccountEntity weixinAccountEntity);

	public void deleteAccount(WeixinAccountEntity weixinAccountEntity);

	public List<WeixinAccountEntity> getWechatAccounts(
			Map<String, Object> params);

	public AccessTokenYw getAccessToken(String appid) throws Exception;

	public void saveAccessToken(AccessTokenYw accessTokenYw) throws Exception;

}
