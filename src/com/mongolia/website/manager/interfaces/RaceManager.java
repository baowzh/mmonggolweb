package com.mongolia.website.manager.interfaces;

import java.util.List;
import java.util.Map;

import com.mongolia.website.model.PaingModel;
import com.mongolia.website.model.RaceDocumentValue;
import com.mongolia.website.model.RaceModelValue;
import com.mongolia.website.model.RaceScoreLogValue;
import com.mongolia.website.model.RaceUser;

/**
 * 
 * @author dell
 *
 */
public interface RaceManager {
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
			String docid, String userid, Integer round) throws Exception;

	/**
	 * 
	 * @param raceid
	 * @param docid
	 * @param userid
	 * @return
	 * @throws Exception
	 */
	public List<RaceScoreLogValue> getRaceScoreLog(String raceid, String docid,
			String userid, Integer round) throws Exception;

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
	public void delRaceDocument(String raceid, String docid, String userid)
			throws Exception;

	/**
	 * 
	 * @param raceScoreLogValue
	 * @throws Exception
	 */
	public void addRaceScoreLogValue(RaceScoreLogValue raceScoreLogValue)
			throws Exception;

	public List<RaceUser> getRaceIndexContent(String raceid) throws Exception;

	public List<RaceDocumentValue> getRaceSumValue(String raceid, String docid,
			Integer round) throws Exception;

	/**
	 * 
	 * @param raceid
	 * @param pageid
	 * @return
	 * @throws Exception
	 */
	public Map<String, Object> getRaceIndexCon(String raceid, String pageid)
			throws Exception;

	/**
	 * 加资格用户
	 * 
	 * @param raceDocumentValue
	 * @throws Exception
	 */
	public void switchUserToNextRound(String raceid, String userid,
			Integer jointype) throws Exception;

	public PaingModel<RaceScoreLogValue> pagingqueryscorelog(String raceid,
			String docid, String index, Integer round) throws Exception;

}
