package com.mongolia.website.model;

import java.util.Date;

public class RaceDocumentValue {
	private String raceid;
	private String docid;
	private Date joindate;
	private Double nettotalscore;
	private Double netaveragescore;
	private Double spetotalscore;
	private Double speaveragescore;
	private Double finalscore;
	private String joinuserid;
	private Integer jointype;
	private String raicevalidcode;

	public String getRaceid() {
		return raceid;
	}

	public void setRaceid(String raceid) {
		this.raceid = raceid;
	}

	public String getDocid() {
		return docid;
	}

	public void setDocid(String docid) {
		this.docid = docid;
	}

	public Date getJoindate() {
		return joindate;
	}

	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}

	public Double getNettotalscore() {
		return nettotalscore;
	}

	public void setNettotalscore(Double nettotalscore) {
		this.nettotalscore = nettotalscore;
	}

	public Double getNetaveragescore() {
		return netaveragescore;
	}

	public void setNetaveragescore(Double netaveragescore) {
		this.netaveragescore = netaveragescore;
	}

	public Double getSpetotalscore() {
		return spetotalscore;
	}

	public void setSpetotalscore(Double spetotalscore) {
		this.spetotalscore = spetotalscore;
	}

	public Double getSpeaveragescore() {
		return speaveragescore;
	}

	public void setSpeaveragescore(Double speaveragescore) {
		this.speaveragescore = speaveragescore;
	}

	public Double getFinalscore() {
		return finalscore;
	}

	public void setFinalscore(Double finalscore) {
		this.finalscore = finalscore;
	}

	public String getJoinuserid() {
		return joinuserid;
	}

	public void setJoinuserid(String joinuserid) {
		this.joinuserid = joinuserid;
	}

	public Integer getJointype() {
		return jointype;
	}

	public void setJointype(Integer jointype) {
		this.jointype = jointype;
	}

	public String getRaicevalidcode() {
		return raicevalidcode;
	}

	public void setRaicevalidcode(String raicevalidcode) {
		this.raicevalidcode = raicevalidcode;
	}

}
