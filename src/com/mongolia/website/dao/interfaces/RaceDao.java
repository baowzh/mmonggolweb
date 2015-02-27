package com.mongolia.website.dao.interfaces;

import java.util.List;

import com.mongolia.website.model.RaceDocumentValue;
import com.mongolia.website.model.RaceModelValue;
import com.mongolia.website.model.RaceScoreLogValue;
import com.mongolia.website.model.UserValue;

public interface RaceDao {
	/**
	 * 
	 * @param raceid
	 * @param inactive
	 * @return
	 * @throws Exception
	 */
	public List<RaceModelValue> getRaceModels(String raceid, Integer inactive)
			throws Exception;

	/**
	 * 
	 * @param raceid
	 * @param docid
	 * @param userid
	 * @return
	 * @throws Exception
	 */
	public List<RaceDocumentValue> getRaceDocuments(String raceid,
			String docid, String userid) throws Exception;

	/**
	 * 
	 * @param raceid
	 * @param docid
	 * @param userid
	 * @return
	 * @throws Exception
	 */
	public List<RaceScoreLogValue> getRaceScoreLog(String raceid, String docid,
			String userid) throws Exception;

	/**
	 * 
	 * @param raceDocumentValue
	 * @throws Exception
	 */
	public void addRaceDocument(RaceDocumentValue raceDocumentValue)
			throws Exception;

	/**
	 * 
	 * @param raceid
	 * @param docid
	 * @throws Exception
	 */
	public void delRaceDocument(String raceid, String docid,String userid) throws Exception;

	/**
	 * 
	 * @param raceScoreLogValue
	 * @throws Exception
	 */
	public void addRaceScoreLogValue(RaceScoreLogValue raceScoreLogValue)
			throws Exception;

	/**
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<UserValue> getRaceUserList(String raceid) throws Exception;
}
