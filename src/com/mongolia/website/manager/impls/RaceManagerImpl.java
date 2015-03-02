package com.mongolia.website.manager.impls;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mongolia.website.dao.interfaces.RaceDao;
import com.mongolia.website.dao.interfaces.UserManagerDao;
import com.mongolia.website.manager.interfaces.RaceManager;
import com.mongolia.website.model.RaceDocumentValue;
import com.mongolia.website.model.RaceModelValue;
import com.mongolia.website.model.RaceScoreLogValue;
import com.mongolia.website.model.RaceUser;
import com.mongolia.website.model.UserValue;
import com.mongolia.website.util.StaticConstants;

@Service("raceManager")
public class RaceManagerImpl implements RaceManager {
	@Autowired
	private RaceDao raceDao;
	@Autowired
	private UserManagerDao userManagerDao;

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
		if (racemodels.get(0).getRound().intValue() != 1) {
			throw new Exception("5");
		}
		// 2.校验是否已经够了限制数
		List<RaceDocumentValue> documents = this.raceDao.getRaceDocuments(
				raceDocumentValue.getRaceid(), null,
				raceDocumentValue.getJoinuserid(), 1);
		if (documents.size() >= 3) {
			throw new Exception("2");
		}
		// 3.是否已经参与了
		documents = this.raceDao.getRaceDocuments(
				raceDocumentValue.getRaceid(), raceDocumentValue.getDocid(),
				raceDocumentValue.getJoinuserid(), 1);
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
		Date currentDate = new Date();
		currentDate.setTime(System.currentTimeMillis());
		if (currentDate.compareTo(raceModelValue.getBegindate()) < 0) {
			throw new Exception("5");
		} else if (currentDate.compareTo(raceModelValue.getEnddate()) > 0) {
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
		List<UserValue> userlist = this.raceDao.getRaceUserList(raceid);
		List<RaceUser> raceUsers = new ArrayList<RaceUser>();
		for (UserValue uservalue : userlist) {
			RaceUser raceUser = new RaceUser();
			raceUser.setUservalue(uservalue);
			List<RaceDocumentValue> documents = this.raceDao.getRaceDocuments(
					raceid, null, uservalue.getUserid(), raceModelValues.get(0)
							.getRound());
			raceUser.setRaceDocumentValues(documents);
			raceUsers.add(raceUser);
		}
		return raceUsers;
	}

	@Override
	public List<RaceDocumentValue> getRaceSumValue(String raceid, String docid,Integer round)
			throws Exception {
		// TODO Auto-generated method stub
		return this.raceDao.getRaceSumValue(raceid, docid,round);
	}

}
