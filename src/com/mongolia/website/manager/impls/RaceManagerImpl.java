package com.mongolia.website.manager.impls;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mongolia.website.dao.interfaces.RaceDao;
import com.mongolia.website.dao.interfaces.UserManagerDao;
import com.mongolia.website.dao.interfaces.WebPageManagerDao;
import com.mongolia.website.dao.interfaces.WebSiteVisitorDao;
import com.mongolia.website.manager.interfaces.RaceManager;
import com.mongolia.website.model.DocumentValue;
import com.mongolia.website.model.ImgValue;
import com.mongolia.website.model.PageChannelRelationValue;
import com.mongolia.website.model.PaingModel;
import com.mongolia.website.model.RaceDocumentValue;
import com.mongolia.website.model.RaceModelValue;
import com.mongolia.website.model.RaceRound;
import com.mongolia.website.model.RaceScoreLogValue;
import com.mongolia.website.model.RaceUser;
import com.mongolia.website.model.RaceUserModel;
import com.mongolia.website.model.UserValue;
import com.mongolia.website.util.StaticConstants;

@Service("raceManager")
@Transactional(rollbackFor = Exception.class)
public class RaceManagerImpl implements RaceManager {
	@Autowired
	private RaceDao raceDao;
	@Autowired
	private UserManagerDao userManagerDao;
	@Autowired
	private WebPageManagerDao webPageManagerDao;
	@Autowired
	private WebSiteVisitorDao webSiteVisitorDao;

	@Override
	public List<RaceModelValue> getRaceModels(String raceid, Integer inactive)
			throws Exception {
		// TODO Auto-generated method stub
		return raceDao.getRaceModels(raceid, inactive);
	}

	@Override
	public List<RaceDocumentValue> getRaceDocuments(String raceid,
			String docid, String userid, Integer round) throws Exception {
		// TODO Auto-generated method stub
		return raceDao.getRaceDocuments(raceid, docid, userid, round);
	}

	@Override
	public List<RaceScoreLogValue> getRaceScoreLog(String raceid, String docid,
			String userid, Integer round) throws Exception {
		// TODO Auto-generated method stub
		return raceDao.getRaceScoreLog(raceid, docid, userid, round);
	}

	@Override
	public void addRaceDocument(RaceDocumentValue raceDocumentValue)
			throws Exception {
		// TODO Auto-generated method stub
		// 1.校验活动是否有效
		List<RaceModelValue> racemodels = this.raceDao.getRaceModels(
				raceDocumentValue.getRaceid(), 1);
		if (racemodels == null || racemodels.isEmpty()) {
			throw new Exception("1");
		}
		// 是否处于第一轮
		List<RaceUserModel> joinusers = this.raceDao.getRaceUserModels(
				racemodels.get(0).getRaceid(), racemodels.get(0).getRound(),
				raceDocumentValue.getJoinuserid());
		if (racemodels.get(0).getRound().intValue() != 1 && joinusers.isEmpty()) {
			throw new Exception("5");// 不是第一轮切少资格用户则
		}
		// 2.校验是否已经够了限制数
		List<RaceDocumentValue> documents = this.raceDao
				.getRaceDocuments(raceDocumentValue.getRaceid(), null,
						raceDocumentValue.getJoinuserid(), racemodels.get(0)
								.getRound());
		if (documents.size() >= 1) {
			throw new Exception("2");
		}
		// 参与方式是否一致
		// if (documents != null && !documents.isEmpty()) {// 校验参与方式是否一致
		// for (RaceDocumentValue raceDocumentValuei : documents) {
		// if (raceDocumentValuei.getJointype().intValue() != raceDocumentValue
		// .getJointype().intValue()) {
		// throw new Exception("6");// 参与方式不一致
		// }
		// }
		// }
		// 3.是否已经参与了
		documents = this.raceDao
				.getRaceDocuments(raceDocumentValue.getRaceid(),
						raceDocumentValue.getDocid(), raceDocumentValue
								.getJoinuserid(), racemodels.get(0).getRound());
		if (!documents.isEmpty()) {
			throw new Exception("3");
		}
		// 3.添加
		raceDocumentValue.setJoindate(new Date());
		raceDocumentValue.setFinalscore(new Double(0));
		raceDocumentValue.setNetaveragescore(new Double(0));
		raceDocumentValue.setNettotalscore(new Double(0));
		raceDocumentValue.setSpeaveragescore(new Double(0));
		raceDocumentValue.setSpetotalscore(new Double(0));
		raceDocumentValue.setRaceround(racemodels.get(0).getRound());
		raceDao.addRaceDocument(raceDocumentValue);
	}

	@Override
	public void delRaceDocument(String raceid, String docid, String userid)
			throws Exception {
		// TODO Auto-generated method stub
		List<RaceDocumentValue> racedocs = this.getRaceDocuments(raceid, docid,
				userid, 1);
		if (racedocs == null || racedocs.isEmpty()) {
			throw new Exception("1");
		}
		raceDao.delRaceDocument(raceid, docid, userid);
	}

	@Override
	public void addRaceScoreLogValue(RaceScoreLogValue raceScoreLogValue)
			throws Exception {
		// TODO Auto-generated method stub
		List<RaceModelValue> raceModelValues = this.raceDao.getRaceModels(
				raceScoreLogValue.getRaceid(), 1);
		RaceModelValue raceModelValue = raceModelValues.get(0);
		// 获取当前nvgvlga
		List<RaceRound> raceRounds = this.raceDao.getRaceRounds(
				raceModelValue.getRaceid(), raceModelValue.getRound());
		Date currentDate = new Date();
		currentDate.setTime(System.currentTimeMillis());
		if (currentDate.compareTo(raceRounds.get(0).getBegindate()) < 0) {
			throw new Exception("5");
		} else if (currentDate.compareTo(raceRounds.get(0).getEnddate()) > 0) {
			throw new Exception("6");
		}
		Map<String, Object> queryUserParams = new HashMap<String, Object>();
		queryUserParams.put("userid", raceScoreLogValue.getScoreuserid());
		List<UserValue> userValues = this.userManagerDao
				.getUser(queryUserParams);
		if (userValues == null || userValues.isEmpty()) {
			throw new Exception("2");// 没有找到用户
		}
		UserValue userValue = userValues.get(0);
		if (userValue.getExpert() != null
				&& userValue.getExpert().intValue() == StaticConstants.SCORE_USER_TYPE2) {// 专家可以平三次
			raceScoreLogValue.setUsertype(StaticConstants.SCORE_USER_TYPE2);
		} else {
			raceScoreLogValue.setUsertype(StaticConstants.SCORE_USER_TYPE1);
		}
		// 获取参与比赛类型
		List<RaceDocumentValue> racedos = this.raceDao.getRaceDocuments(
				raceScoreLogValue.getRaceid(), raceScoreLogValue.getDocid(),
				null, raceModelValue.getRound());
		RaceDocumentValue raceDocumentValue = racedos.get(0);
		// 1. 校验是否已经评过分
		List<RaceScoreLogValue> scorelogs = this.raceDao.getRaceScoreLog(
				raceScoreLogValue.getRaceid(), raceScoreLogValue.getDocid(),
				raceScoreLogValue.getScoreuserid(), raceModelValue.getRound());
		if (scorelogs != null && !scorelogs.isEmpty()) {
			throw new Exception("1");// 普通用户只能评一次分数
		} else if (raceModelValue.getRound().intValue() > 2
				&& raceScoreLogValue.getUsertype().intValue() == StaticConstants.SCORE_USER_TYPE2
				&& raceDocumentValue.getJointype().intValue() == StaticConstants.JOINRACE_TYPE2) {
			throw new Exception("4");// 儿童作品专家用户只能平2次
		}
		raceScoreLogValue.setScoredate(new Date());
		raceDao.addRaceScoreLogValue(raceScoreLogValue);
	}

	@Override
	public List<RaceUser> getRaceIndexContent(String raceid) throws Exception {
		// TODO Auto-generated method stub
		// 先获取所有参与比赛用户列表，在根据用户列表获取每个用户列表下面的参赛作品列表
		List<RaceModelValue> raceModelValues = this.raceDao.getRaceModels(
				raceid, 1);
		List<UserValue> userlist = this.raceDao.getRaceUserList(raceModelValues
				.get(0).getRaceid(), raceModelValues.get(0).getRound());
		List<UserValue> maxScorelist = this.raceDao.getUserMaxScores(
				raceModelValues.get(0).getRaceid(), raceModelValues.get(0)
						.getRound());
		List<RaceUser> raceUsers = new ArrayList<RaceUser>();
		for (UserValue uservalue : userlist) {
			RaceUser raceUser = new RaceUser();
			raceUser.setUservalue(uservalue);
			UserValue maxScore = getMaxScore(uservalue, maxScorelist);
			if (maxScore != null) {
				raceUser.setMaxscore(maxScore.getMaxscore());
			} else {
				raceUser.setMaxscore(new Double(0));
			}
			List<RaceDocumentValue> documents = this.raceDao.getRaceDocuments(
					raceModelValues.get(0).getRaceid(), null,
					uservalue.getUserid(), raceModelValues.get(0).getRound());
			raceUser.setRaceDocumentValues(documents);
			raceUsers.add(raceUser);
		}
		RaceUser raceusers[] = new RaceUser[raceUsers.size()];
		raceUsers.toArray(raceusers);
		Arrays.sort(raceusers, new Comparator<RaceUser>() {
			@Override
			public int compare(RaceUser o1, RaceUser o2) {
				// TODO Auto-generated method stub
				return o2.getMaxscore().compareTo(o1.getMaxscore());
			}
		});
		return Arrays.asList(raceusers);
	}

	private UserValue getMaxScore(UserValue uservalue,
			List<UserValue> maxScorelist) {
		UserValue returnUserValue = new UserValue();
		returnUserValue.setMaxscore(new Double(0));
		for (UserValue userValuei : maxScorelist) {
			if (userValuei.getUserid().equalsIgnoreCase(uservalue.getUserid())) {
				returnUserValue = userValuei;
			}
		}
		return returnUserValue;
	}

	@Override
	public List<RaceDocumentValue> getRaceSumValue(String raceid, String docid,
			Integer round) throws Exception {
		// TODO Auto-generated method stub
		return this.raceDao.getRaceSumValue(raceid, docid, round);
	}

	@Override
	public Map<String, Object> getRaceIndexCon(String raceid, String pageid)
			throws Exception {
		// TODO Auto-generated method stub
		List<PageChannelRelationValue> relations = webPageManagerDao
				.getRelatedChannes("raceindex");
		Map<String, Object> indexPageContent = new HashMap<String, Object>();
		for (int i = 0; i < relations.size(); i++) {
			PageChannelRelationValue channel = relations.get(i);
			PaingModel<DocumentValue> paingModel = new PaingModel<DocumentValue>();
			paingModel.setDocchannel(channel.getChannelid());
			paingModel.setPageindex(1);
			paingModel.setPageindex(StaticConstants.INDEX_DOC_ROWCOUNT);
			paingModel.setStartrow(0);
			paingModel.setEndrow(channel.getChanneldoccount());// fetchcount
			paingModel.setDocstatus(2);
			paingModel.setInindex(1);
			List<DocumentValue> documents = this.webSiteVisitorDao
					.pagingquerydoc(paingModel);
			indexPageContent.put(channel.getVariablename(), documents);
		}
		return indexPageContent;
	}

	@Override
	public void switchUserToNextRound(String raceid, String userid,
			Integer jointype) throws Exception {
		// TODO Auto-generated method stub
		List<RaceModelValue> racemodels = this.raceDao.getRaceModels(null, 1);
		if (racemodels != null && !racemodels.isEmpty()) {
			RaceModelValue raceModelValue = racemodels.get(0);
			Integer nextround = raceModelValue.getRound() + 1;
			// 1.校验是否存在
			List<RaceDocumentValue> racedocs = this.raceDao.getRaceDocuments(
					raceModelValue.getRaceid(), null, userid,
					raceModelValue.getRound());
			if (racedocs == null || racedocs.isEmpty()) {
				throw new Exception("4");// vrvldagan d vrvlqahv budugel baihu
											// ugei
			}
			// 2.校验是否已经转换
			List<RaceUserModel> raceusers = this.raceDao.getRaceUserModels(
					raceid, nextround, userid);
			if (raceusers != null && !raceusers.isEmpty()) {
				throw new Exception("5");// vrvldagan d vrvlqahv budugel baihu
			}
			// 3.是否在活动期间
			Date currentDate = new Date();
			currentDate.setTime(System.currentTimeMillis());
			if (currentDate.compareTo(raceModelValue.getBegindate()) < 0) {
				throw new Exception("6");
			} else if (currentDate.compareTo(raceModelValue.getEnddate()) > 0) {
				throw new Exception("7");
			}
			// 校验是否有nextround
			List<RaceRound> rounds = this.raceDao.getRaceRounds(
					raceModelValue.getRaceid(), nextround);
			if (rounds == null || rounds.isEmpty()) {
				throw new Exception("8"); //  
			}
			this.raceDao.addRaceUser(raceid, userid, nextround);

		} else {
			throw new Exception("3");
		}
	}

	@Override
	public PaingModel<RaceScoreLogValue> pagingqueryscorelog(String raceid,
			String docid, String index, Integer round) throws Exception {
		// TODO Auto-generated method stub
		List<RaceScoreLogValue> racescores = this.raceDao.pagingqueryscorelog(
				raceid, docid, round, Integer.parseInt(index));
		Integer rount = this.raceDao.racescorecount(raceid, docid, round);
		PaingModel<RaceScoreLogValue> paingModel = new PaingModel<RaceScoreLogValue>();
		paingModel.setModelList(racescores);
		paingModel.setRowcount("" + rount);
		//
		paingModel.setPagesize(28);
		int pageCount = rount / 28;
		if (rount % paingModel.getPagesize() > 0) {
			pageCount = pageCount + 1;
		}
		paingModel.setPageindex(Integer.parseInt(index));
		paingModel.setPagecount(pageCount);
		if (paingModel.getPageindex() < paingModel.getPagecount()) {
			paingModel.setNextindex(pageCount);
		} else {
			paingModel.setNextindex(paingModel.getPageindex() + 1);
		}
		if (paingModel.getPageindex() > 1) {
			paingModel.setPreviousindex(paingModel.getPageindex() - 1);
		} else {
			paingModel.setPreviousindex(1);
		}
		paingModel.setDocstatus(round);
		paingModel.setDocchannel(raceid);
		paingModel.setImggroupid(docid);
		return paingModel;
	}

	public List<ImgValue> getRaceImgList(String raceid, Integer count)
			throws Exception {
		return this.raceDao.getRaceImgList(raceid, count);
	}

	/**
	 * 
	 * @param channelid
	 * @return
	 * @throws Exception
	 */
	public List<DocumentValue> getvides(String channelid) throws Exception {
		//
		PaingModel<DocumentValue> paingModelVide0 = new PaingModel<DocumentValue>();
		paingModelVide0.setDocchannel(StaticConstants.bubaichanelid);
		paingModelVide0.setPageindex(1);
		paingModelVide0.setPageindex(StaticConstants.INDEX_DOC_ROWCOUNT);
		paingModelVide0.setStartrow(0);
		paingModelVide0.setEndrow(9);
		paingModelVide0.setDocstatus(2);
		paingModelVide0.setFlash(1);
		paingModelVide0.setInindex(1);
		List<DocumentValue> documents = this.webSiteVisitorDao
				.pagingquerydoc(paingModelVide0);
		return documents;
	}

}
