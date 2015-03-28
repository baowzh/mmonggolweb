package com.mongolia.website.manager.interfaces;

import java.util.List;
import java.util.Map;

import com.mongolia.website.model.AccessTokenYw;
import com.mongolia.website.model.WeixinAccountEntity;

public interface WeixinAccountServiceI  {
	/**
	 * 
	 * @return
	 */
	public String getAccessToken();

	/**
	 * 
	 * @return
	 */
	public WeixinAccountEntity findLoginWeixinAccount();

	/**
	 * 
	 * @param username
	 * @return
	 */
	public List<WeixinAccountEntity> findByUsername(String username);

	/**
	 * 
	 * @param id
	 * @return
	 */
	public WeixinAccountEntity getAccountEntity(String id);

	/**
	 * 
	 * @param weixinAccountEntity
	 */
	public void saveOrUpdate(WeixinAccountEntity weixinAccountEntity);

	/**
	 * 
	 * @param weixinAccountEntity
	 */
	public void deleteAccount(WeixinAccountEntity weixinAccountEntity);

	/**
	 * 
	 * @param params
	 * @return
	 */
	public List<WeixinAccountEntity> getWechatAccounts(
			Map<String, Object> params);

	/**
	 * 更新某个账号的访问accesstoken
	 * 
	 * @param accessTokenYw
	 */
	public void updateAccountAccessToken(AccessTokenYw accessTokenYw);

	/**
	 * 
	 * @param appid
	 * @return
	 */
	public AccessTokenYw getAccessToken(String appid);

	/**
	 * 同步关注用户列表
	 */
	public void synAttentionUsers() throws Exception;

}
