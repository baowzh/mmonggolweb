package com.mongolia.website.model;

import java.util.Date;

public class RaceRound {
	public String raceid;
	public Integer raceround;
	public Date begindate;
	public Date enddate;

	public String getRaceid() {
		return raceid;
	}

	public void setRaceid(String raceid) {
		this.raceid = raceid;
	}

	public Integer getRaceround() {
		return raceround;
	}

	public void setRaceround(Integer raceround) {
		this.raceround = raceround;
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

}
