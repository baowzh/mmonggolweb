package com.mongolia.website.dao.impls;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.mongolia.website.dao.interfaces.RaceDao;
import com.mongolia.website.model.RaceDocumentValue;
import com.mongolia.website.model.RaceModelValue;
import com.mongolia.website.model.RaceScoreLogValue;
import com.mongolia.website.model.UserValue;

@Repository("raceDao")
public class RaceDaoImpl extends BaseDaoiBatis implements RaceDao {

	@Override
	public List<RaceModelValue> getRaceModels(String raceid, Integer inactive)
			throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> queryParams = new HashMap<String, Object>();
		queryParams.put("raceid", raceid);
		queryParams.put("inactive", inactive);
		return this.getSqlMapClientTemplate().queryForList("getRaceModel",
				queryParams);

	}

	@Override
	public List<RaceDocumentValue> getRaceDocuments(String raceid,
			String docid, String userid) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> queryParams = new HashMap<String, Object>();
		queryParams.put("raceid", raceid);
		queryParams.put("docid", docid);
		queryParams.put("joinuserid", userid);
		return this.getSqlMapClientTemplate().queryForList(
				"getRaceDocumentValue", queryParams);

	}

	@Override
	public List<RaceScoreLogValue> getRaceScoreLog(String raceid, String docid,
			String userid) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> queryParams = new HashMap<String, Object>();
		queryParams.put("raceid", raceid);
		queryParams.put("docid", docid);
		queryParams.put("userid", userid);
		return this.getSqlMapClientTemplate().queryForList(
				"getRaceScoreLogValue", queryParams);
	}

	@Override
	public void addRaceDocument(RaceDocumentValue raceDocumentValue)
			throws Exception {
		this.getSqlMapClientTemplate().insert("addRaceDocumentValue",
				raceDocumentValue);
		// TODO Auto-generated method stub

	}

	@Override
	public void delRaceDocument(String raceid, String docid, String userid)
			throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> delparams = new HashMap<String, Object>();
		delparams.put("raceid", raceid);
		delparams.put("docid", docid);
		delparams.put("joinuserid", userid);
		this.getSqlMapClientTemplate()
				.insert("delRaceDocumentValue", delparams);
	}

	@Override
	public void addRaceScoreLogValue(RaceScoreLogValue raceScoreLogValue)
			throws Exception {
		// TODO Auto-generated method stub
		this.getSqlMapClientTemplate().insert("addRaceScoreLogValue",
				raceScoreLogValue);
	}

	@Override
	public List<UserValue> getRaceUserList(String raceid) throws Exception {
		// TODO Auto-generated method stub
		Map<String,Object> queryMap=new HashMap<String,Object>();
		queryMap.put("raceid", raceid);
		return this.getSqlMapClientTemplate().queryForList("getRaceUserList",
				queryMap);
	}

}
