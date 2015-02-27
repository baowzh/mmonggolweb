package com.mongolia.website.model;

import java.util.Date;

public class RaceModelValue {
	/**
	 * 比赛id
	 */
	private String raceid;
	/**
	 * 比赛开始时间
	 */
	private Date begindate;
	/**
	 * 比赛结束时间
	 */
	private Date enddate;
	/**
	 * 比赛名称
	 */
	private String racename;
	/**
	 * 比赛描述
	 */
	private String racedesc;
	/**
	 * 参赛作品个数
	 */
	private Integer racedoccount;
	/**
	 * 评分次数
	 */
	private Integer scoretime;
	/**
	 * 是否处于活动中
	 */
	private Integer inactive;

	public String getRaceid() {
		return raceid;
	}

	public void setRaceid(String raceid) {
		this.raceid = raceid;
	}

	public Date getBegindate() {
		return begindate;
	}

	public void setBegindate(Date begindate) {
		this.begindate = begindate;
	}

	public Date getEnddate() {
		return enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}

	public String getRacename() {
		return racename;
	}

	public void setRacename(String racename) {
		this.racename = racename;
	}

	public Integer getRacedoccount() {
		return racedoccount;
	}

	public void setRacedoccount(Integer racedoccount) {
		this.racedoccount = racedoccount;
	}

	public Integer getScoretime() {
		return scoretime;
	}

	public void setScoretime(Integer scoretime) {
		this.scoretime = scoretime;
	}

	public String getRacedesc() {
		return racedesc;
	}

	public void setRacedesc(String racedesc) {
		this.racedesc = racedesc;
	}

	public Integer getInactive() {
		return inactive;
	}

	public void setInactive(Integer inactive) {
		this.inactive = inactive;
	}

}
