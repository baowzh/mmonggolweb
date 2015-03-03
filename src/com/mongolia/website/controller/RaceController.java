package com.mongolia.website.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mongolia.website.manager.interfaces.RaceManager;
import com.mongolia.website.model.RaceDocumentValue;
import com.mongolia.website.model.RaceModelValue;
import com.mongolia.website.model.RaceScoreLogValue;
import com.mongolia.website.model.RaceUser;
import com.mongolia.website.model.UserValue;

@Controller
public class RaceController {
	@Autowired
	private RaceManager raceManager;

	/**
	 * 
	 * @param request
	 * @param map
	 * @return
	 */
	@RequestMapping("/getRaceModels.do")
	public ModelAndView getRaceModels(HttpServletRequest request, ModelMap map) {
		try {
			
			List<RaceModelValue> raceModelValues = this.raceManager
					.getRaceModels(request.getParameter("raceid"), 1);
			map.put("raceModelValues", raceModelValues);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return new ModelAndView("jsonView", map);
	}

	/**
	 * 
	 * @param request
	 * @param raceDocumentValue
	 * @param map
	 * @return
	 */
	@RequestMapping("/addRaceDocument.do")
	public ModelAndView addRaceDocument(HttpServletRequest request,
			RaceDocumentValue raceDocumentValue, ModelMap map) {
		try {
			String sysvalidcode = (String) request.getSession().getAttribute(
					"validateCode");
			if (!sysvalidcode.equalsIgnoreCase(raceDocumentValue
					.getRaicevalidcode())) {
				throw new Exception("4");
			}
			UserValue sessionUser = (UserValue) request.getSession()
					.getAttribute("user");
			raceDocumentValue.setJoinuserid(sessionUser.getUserid());
			this.raceManager.addRaceDocument(raceDocumentValue);
			map.put("mess", 0);
		} catch (Exception ex) {
			ex.printStackTrace();
			map.put("mess", ex.getMessage());
		}
		return new ModelAndView("jsonView", map);
	}

	@RequestMapping("/delRaceDocument.do")
	public ModelAndView delRaceDocument(HttpServletRequest request, ModelMap map) {
		try {
			UserValue sessionUser = (UserValue) request.getSession()
					.getAttribute("user");
			this.raceManager.delRaceDocument(request.getParameter("raceid"),
					request.getParameter("docid"), sessionUser.getUserid());
			map.put("mess", 0);
		} catch (Exception ex) {
			ex.printStackTrace();
			map.put("mess", ex.getMessage());
		}
		return new ModelAndView("jsonView", map);
	}

	/**
	 * 
	 * @param request
	 * @param raceScoreLogValue
	 * @param map
	 * @return
	 */
	@RequestMapping("/addRaceScoreLogValue.do")
	public ModelAndView addRaceScoreLogValue(HttpServletRequest request,
			RaceScoreLogValue raceScoreLogValue, ModelMap map) {
		try {
			UserValue sessionUser = (UserValue) request.getSession()
					.getAttribute("user");
			raceScoreLogValue.setScoreuserid(sessionUser.getUserid());
			raceScoreLogValue.setScoredate(new Date());
			this.raceManager.addRaceScoreLogValue(raceScoreLogValue);
			map.put("mess", 0);
		} catch (Exception ex) {
			ex.printStackTrace();
			map.put("mess", ex.getMessage());
		}
		return new ModelAndView("jsonView", map);
	}

	/**
	 * 
	 * @param request
	 * @param map
	 * @return
	 */
	@RequestMapping("/raceindex.do")
	public ModelAndView raceindex(HttpServletRequest request, ModelMap map) {
		// 获取所有参赛人员和相关的作品
		try {
			List<RaceUser> raceUsers = this.raceManager
					.getRaceIndexContent(request.getParameter("raceid"));
			map.put("raceUsers", raceUsers);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return new ModelAndView("baitelhei/raceindex", map);
	}

}
