package com.mongolia.website.manager.impls;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mongolia.website.dao.interfaces.AutoResponseDao;
import com.mongolia.website.dao.interfaces.WechatDocDao;
import com.mongolia.website.manager.interfaces.AutoResponseManager;
import com.mongolia.website.model.AutoResponse;
import com.mongolia.website.model.PagingAutoResModel;
import com.mongolia.website.model.WechatDocValue;
import com.mongolia.website.util.UUIDMaker;

@Service("autoResponseManagerImpl")
public class AutoResponseManagerImpl implements AutoResponseManager {

	@Resource(name = "autoResponseDaoImpl")
	private AutoResponseDao autoResponseDao;
	@Resource(name = "wechatDocDaoImpl")
	private WechatDocDao wechatDocDao;

	@Override
	public void delete(AutoResponse entity) throws Exception {
		// TODO Auto-generated method stub
		autoResponseDao.delete(entity);
	}

	@Override
	public List<AutoResponse> getAutoResponses(Map<String, Object> params)
			throws Exception {
		// TODO Auto-generated method stub
		return this.autoResponseDao.getAutoResponses(params);
	}

	@Override
	public void saveOrUpdate(AutoResponse entity) throws Exception {
		// TODO Auto-generated method stub
		if (entity.getId() != null
				&& !entity.getId().equalsIgnoreCase("_empty")) {
			this.autoResponseDao.update(entity);
		} else {
			entity.setId(UUIDMaker.getUUID());
			this.autoResponseDao.save(entity);
		}
	}

	@Override
	public PagingAutoResModel pagingqueryAutoResp(PagingAutoResModel paingModel)
			throws Exception {
		// TODO Auto-generated method stub
		paingModel.setPagesize(10);
		paingModel.setStartrow((paingModel.getPageindex() - 1)
				* paingModel.getPagesize());
		List<AutoResponse> autoResponses = this.autoResponseDao
				.pagingQueryAutoResponse(paingModel);
		paingModel.setModelList(autoResponses);
		Integer rowcount = this.autoResponseDao
				.getAutoResponseCount(paingModel);
		paingModel.setRowcount("" + rowcount);
		int pageCount = rowcount / 10;
		if (rowcount % 10 > 0) {
			pageCount = pageCount + 1;
		}
		paingModel.setPagecount(pageCount);
		return paingModel;
	}

	@Override
	public void addWechatDoc(WechatDocValue wechatDocValue) throws Exception {
		// TODO Auto-generated method stube
		wechatDocValue.setSeldate(new Date());
		wechatDocValue.setId(UUIDMaker.getUUID());
		this.wechatDocDao.addWechatDoc(wechatDocValue);
	}

	@Override
	public void delWechatDoc(String docid, String autoresid) throws Exception {
		// TODO Auto-generated method stub
		WechatDocValue wechatDocValue = new WechatDocValue();
		wechatDocValue.setDocid(docid);
		wechatDocValue.setResponseid(autoresid);
		this.wechatDocDao.delWechatDoc(wechatDocValue);

	}

	@Override
	public List<WechatDocValue> getWechatDocValues(String autoresid)
			throws Exception {
		// TODO Auto-generated method stub
		return this.wechatDocDao.getWechatDocWithAutoResId(autoresid);
	}

}
