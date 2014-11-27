package com.mongolia.website.dao.interfaces;

import java.util.List;
import java.util.Map;

import com.mongolia.website.model.AutoResponse;

public interface AutoResponseDao {
	public void delete(AutoResponse entity) throws Exception;

	public List<AutoResponse> getAutoResponses(Map<String, Object> params)
			throws Exception;

	public void save(AutoResponse entity) throws Exception;

	public void update(AutoResponse entity) throws Exception;

	public boolean checkexists(String id) throws Exception;
}
