package com.mongolia.website.manager.impls;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mongolia.website.dao.interfaces.RaceDao;
import com.mongolia.website.manager.interfaces.RaceManager;
import com.mongolia.website.model.RaceDocumentValue;
import com.mongolia.website.model.RaceModelValue;
import com.mongolia.website.model.RaceScoreLogValue;
import com.mongolia.website.model.RaceUser;
import com.mongolia.website.model.UserValue;

@Service("raceManager")
public class RaceManagerImpl implements RaceManager {
	@Autowired
	private RaceDao raceDao;

	@Override
	public List<RaceModelValue> getRaceModels(String raceid, Integer inactive)
			throws Exception {
		// TODO Auto-generated method stub
		return raceDao.getRaceModels(raceid, inactive);
	}

	@Override
	public List<RaceDocumentValue> getRaceDocuments(String raceid,
			String docid, String userid) throws Exception {
		// TODO Auto-generated method stub
		return raceDao.getRaceDocuments(raceid, docid, userid);
	}

	@Override
	public List<RaceScoreLogValue> getRaceScoreLog(String raceid, String docid,
			String userid) throws Exception {
		// TODO Auto-generated method stub
		return raceDao.getRaceScoreLog(raceid, docid, userid);
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
		// 2.校验是否已经够了限制数
		List<RaceDocumentValue> documents = this.raceDao.getRaceDocuments(
				raceDocumentValue.getRaceid(), null,
				raceDocumentValue.getJoinuserid());
		if (documents.size() >= 3) {
			throw new Exception("2");
		}
		// 3.是否已经参与了
		documents = this.raceDao.getRaceDocuments(
				raceDocumentValue.getRaceid(), raceDocumentValue.getDocid(),
				raceDocumentValue.getJoinuserid());
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
		raceDao.addRaceDocument(raceDocumentValue);
	}

	@Override
	public void delRaceDocument(String raceid, String docid, String userid)
			throws Exception {
		// TODO Auto-generated method stub
		List<RaceDocumentValue> racedocs = this.getRaceDocuments(raceid, docid,
				userid);
		if (racedocs == null || racedocs.isEmpty()) {
			throw new Exception("1");
		}
		raceDao.delRaceDocument(raceid, docid,userid);
	}

	@Override
	public void addRaceScoreLogValue(RaceScoreLogValue raceScoreLogValue)
			throws Exception {
		// TODO Auto-generated method stub
		// 1. 校验是否已经评过分
		List<RaceScoreLogValue> scorelogs = this.raceDao.getRaceScoreLog(
				raceScoreLogValue.getRaceid(), raceScoreLogValue.getDocid(),
				raceScoreLogValue.getScoreuserid());
		if (scorelogs != null && !scorelogs.isEmpty()) {
			throw new Exception("1");
		}
		// 2.
		raceScoreLogValue.setScoredate(new Date());
		raceDao.addRaceScoreLogValue(raceScoreLogValue);
	}

	@Override
	public List<RaceUser> getRaceIndexContent(String raceid) throws Exception {
		// TODO Auto-generated method stub
		// 先获取所有参与比赛用户列表，在根据用户列表获取每个用户列表下面的参赛作品列表
		List<UserValue> userlist = this.raceDao.getRaceUserList(raceid);
		List<RaceUser> raceUsers = new ArrayList<RaceUser>();
		for (UserValue uservalue : userlist) {
			RaceUser raceUser = new RaceUser();
			raceUser.setUservalue(uservalue);
			List<RaceDocumentValue> documents = this.raceDao.getRaceDocuments(
					raceid, null, uservalue.getUserid());
			raceUser.setRaceDocumentValues(documents);
			raceUsers.add(raceUser);
		}
		return raceUsers;
	}

}
