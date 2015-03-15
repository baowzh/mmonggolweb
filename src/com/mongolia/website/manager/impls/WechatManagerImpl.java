package com.mongolia.website.manager.impls;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mongolia.website.manager.interfaces.WechatManager;
import com.mongolia.website.model.WechatAccountEntity;

@Service("wechatManagerImpl")
public class WechatManagerImpl implements WechatManager {

	@Override
	public WechatAccountEntity getWechatAccountEntity(String appid)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addnewitem(String mediaid, String author, String title,
			String contentsourceurl, String content, String digest,
			Integer showcoverpic) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void uploadMapnews(List<String> newsitemids) throws Exception {
		// TODO Auto-generated method stub

	}

}
