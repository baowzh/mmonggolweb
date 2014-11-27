package com.mongolia.website.manager.impls;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mongolia.website.dao.interfaces.AutoResponseDao;
import com.mongolia.website.manager.interfaces.AutoResponseManager;
import com.mongolia.website.model.AutoResponse;
import com.mongolia.website.util.UUIDMaker;
@Service("autoResponseManagerImpl")
public class AutoResponseManagerImpl implements AutoResponseManager {

	@Resource(name = "autoResponseDaoImpl")
	private AutoResponseDao autoResponseDao;

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
		if (this.autoResponseDao.checkexists(entity.getId())) {
			this.autoResponseDao.update(entity);
		} else {
			entity.setId(UUIDMaker.getUUID());
			this.autoResponseDao.save(entity);
		}
	}

}
