package com.mongolia.website.model;

import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

@SuppressWarnings("serial")
public class UserValue implements UserDetails {

	private String userid;
	private String artname;
	private String lastip;
	private String name;
	private String home;
	private Integer logincount;
	private Date logindate;
	private Date createdate;
	private Integer status;
	private Integer sex;
	private Integer age;
	private Date regdate;
	private String regdateStr;
	private Integer userkind;
	private List<RoleValue> roleValues;
	private SimpleDateFormat formater = new SimpleDateFormat("yyyy-MM-dd");
	private Integer retnum;
	private Integer weeke;
	private Integer maillogin = 0;
	private String encripedPass;
	/**
	 * 用户头像
	 */
	private byte headimg[];

	private String firstname;

	private String bolgname;

	private String unit;

	private String birthday;
	private Date birday;

	private String province;
	private String nowprovince;
	private String provincename;
	private String nowprovincename;
	private String phone;
	private String qq;
	private String email;
	private String hope;
	private String belief;
	private String idol;
	private String maxim;
	private String music;
	private String book;
	private String singer;
	private String varifycode;
	private byte headimgsm[];
	private Integer stoped;
	private Date stopeddate;
	private String districtcode;
	private String parentcode;
	private String parentcode1;
	private String hsien;
	private String nowhsien;
	private String hsienname;
	private String nowhsienname;
	private String profession;
	private Integer blogclass;
	private String professioncode;
	private String professionname;
	private String imguser;
	private String oldid;
	private String headurl;
	private String sexsel;
	private String blogclasssel;
	private byte[] img;
	private Integer managerflag;
	private Integer expert;
	private Double maxscore;
	private Integer jointype;
	private Integer active;

	public String getLastip() {
		return lastip;
	}

	public void setLastip(String lastip) {
		this.lastip = lastip;
	}

	public Integer getLogincount() {
		return logincount;
	}

	public void setLogincount(Integer logincount) {
		this.logincount = logincount;
	}

	public Date getLogindate() {
		return logindate;
	}

	public void setLogindate(Date logindate) {
		this.logindate = logindate;
	}

	public Date getCreatedate() {
		return createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public List<RoleValue> getRoles() {
		return roleValues;
	}

	public void setRoles(List<RoleValue> roleValues) {
		this.roleValues = roleValues;
	}

	// ===========以下属性为安全架构属性===========

	private String username; // 账号
	private String password; // 密码
	private boolean accountNonExpired = true; // 账号是否过期
	private boolean accountNonLocked = true; // 账号是否锁定
	private boolean credentialsNonExpired = true; //
	private boolean enabled = true; // 是否可用
	private Collection<? extends GrantedAuthority> authorities; // 权限集合
	private String mailloginid;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isAccountNonExpired() {
		return accountNonExpired;
	}

	public void setAccountNonExpired(boolean accountNonExpired) {
		this.accountNonExpired = accountNonExpired;
	}

	public boolean isAccountNonLocked() {
		return accountNonLocked;
	}

	public void setAccountNonLocked(boolean accountNonLocked) {
		this.accountNonLocked = accountNonLocked;
	}

	public boolean isCredentialsNonExpired() {
		return credentialsNonExpired;
	}

	public void setCredentialsNonExpired(boolean credentialsNonExpired) {
		this.credentialsNonExpired = credentialsNonExpired;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public void setAuthorities(
			Collection<? extends GrantedAuthority> authorities) {
		this.authorities = authorities;
	}

	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}

	// 获取当前登录用户详细信息必须重写hashCode和equals方法
	public int hashCode() {
		return this.getUsername().hashCode();
	}

	public boolean equals(Object object) {
		boolean flag = false;
		if (object instanceof UserDetails) {
			UserDetails user = (UserDetails) object;
			if (user.getUsername().equals(this.getUsername()))
				flag = true;
		}
		return flag;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public List<RoleValue> getRoleValues() {
		return roleValues;
	}

	public void setRoleValues(List<RoleValue> roleValues) {
		this.roleValues = roleValues;
	}

	public String getArtname() {
		return artname;
	}

	public void setArtname(String artname) {
		this.artname = artname;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBolgname() {
		return bolgname;
	}

	public void setBolgname(String bolgname) {
		this.bolgname = bolgname;
	}

	public String getHome() {
		return home;
	}

	public void setHome(String home) {
		this.home = home;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getRegdateStr() {
		this.regdateStr = this.formater.format(this.regdate);
		return regdateStr;
	}

	public Integer getUserkind() {
		return userkind;
	}

	public void setUserkind(Integer userkind) {
		this.userkind = userkind;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getNowprovince() {
		return nowprovince;
	}

	public void setNowprovince(String nowprovince) {
		this.nowprovince = nowprovince;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHope() {
		return hope;
	}

	public void setHope(String hope) {
		this.hope = hope;
	}

	public String getBelief() {
		return belief;
	}

	public void setBelief(String belief) {
		this.belief = belief;
	}

	public String getIdol() {
		return idol;
	}

	public void setIdol(String idol) {
		this.idol = idol;
	}

	public String getMaxim() {
		return maxim;
	}

	public void setMaxim(String maxim) {
		this.maxim = maxim;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getLogindatestr() {
		if (this.getLogindate() == null) {
			return null;
		} else {
			String lastelogindate = formater.format(this.getLogindate());
			return lastelogindate;
		}

	}

	public String getRegdatestr() {
		String redatestr = formater.format(this.getRegdate());
		return redatestr;
	}

	public Date getBirday() {
		// return birday;
		try {
			if (this.birthday != null) {
				return this.formater.parse(this.birthday);
			} else {
				return null;
			}
		} catch (Exception ex) {
			return null;
		}
	}

	public void setBirday(Date birday) {
		this.birday = birday;
	}

	public String getMusic() {
		return music;
	}

	public void setMusic(String music) {
		this.music = music;
	}

	public String getBook() {
		return book;
	}

	public void setBook(String book) {
		this.book = book;
	}

	public String getSinger() {
		return singer;
	}

	public void setSinger(String singer) {
		this.singer = singer;
	}

	public void setRegdateStr(String regdateStr) {
		this.regdateStr = regdateStr;
	}

	public byte[] getHeadimg() {
		return headimg;
	}

	public void setHeadimg(byte[] headimg) {
		this.headimg = headimg;
	}

	public byte[] getHeadimgsm() {
		return headimgsm;
	}

	public void setHeadimgsm(byte[] headimgsm) {
		this.headimgsm = headimgsm;
	}

	public String getVarifycode() {
		return varifycode;
	}

	public void setVarifycode(String varifycode) {
		this.varifycode = varifycode;
	}

	public Integer getStoped() {
		return stoped;
	}

	public void setStoped(Integer stoped) {
		this.stoped = stoped;
	}

	public Date getStopeddate() {
		return stopeddate;
	}

	public void setStopeddate(Date stopeddate) {
		this.stopeddate = stopeddate;
	}

	public Integer getRetnum() {
		return retnum;
	}

	public void setRetnum(Integer retnum) {
		this.retnum = retnum;
	}

	public Integer getWeeke() {
		return weeke;
	}

	public void setWeeke(Integer weeke) {
		this.weeke = weeke;
	}

	public String getDistrictcode() {
		return districtcode;
	}

	public void setDistrictcode(String districtcode) {
		this.districtcode = districtcode;
	}

	public String getParentcode() {
		return parentcode;
	}

	public void setParentcode(String parentcode) {
		this.parentcode = parentcode;
	}

	public String getParentcode1() {
		return parentcode1;
	}

	public void setParentcode1(String parentcode1) {
		this.parentcode1 = parentcode1;
	}

	public String getHsien() {
		return hsien;
	}

	public void setHsien(String hsien) {
		this.hsien = hsien;
	}

	public String getNowhsien() {
		return nowhsien;
	}

	public void setNowhsien(String nowhsien) {
		this.nowhsien = nowhsien;
	}

	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	public Integer getBlogclass() {
		return blogclass;
	}

	public void setBlogclass(Integer blogclass) {
		this.blogclass = blogclass;
	}

	public String getProvincename() {
		return provincename;
	}

	public void setProvincename(String provincename) {
		this.provincename = provincename;
	}

	public String getNowprovincename() {
		return nowprovincename;
	}

	public void setNowprovincename(String nowprovincename) {
		this.nowprovincename = nowprovincename;
	}

	public String getHsienname() {
		return hsienname;
	}

	public void setHsienname(String hsienname) {
		this.hsienname = hsienname;
	}

	public String getNowhsienname() {
		return nowhsienname;
	}

	public void setNowhsienname(String nowhsienname) {
		this.nowhsienname = nowhsienname;
	}

	public String getProfessioncode() {
		return professioncode;
	}

	public void setProfessioncode(String professioncode) {
		this.professioncode = professioncode;
	}

	public String getProfessionname() {
		return professionname;
	}

	public void setProfessionname(String professionname) {
		this.professionname = professionname;
	}

	public String getImguser() {
		return imguser;
	}

	public void setImguser(String imguser) {
		this.imguser = imguser;
	}

	public String getOldid() {
		return oldid;
	}

	public void setOldid(String oldid) {
		this.oldid = oldid;
	}

	public Integer getMaillogin() {
		return maillogin;
	}

	public void setMaillogin(Integer maillogin) {
		this.maillogin = maillogin;
	}

	public String getMailloginid() {
		return mailloginid;
	}

	public void setMailloginid(String mailloginid) {
		this.mailloginid = mailloginid;
	}

	public String getHeadurl() {
		return headurl;
	}

	public void setHeadurl(String headurl) {
		this.headurl = headurl;
	}

	public String getSexsel() {
		return sexsel;
	}

	public void setSexsel(String sexsel) {
		this.sexsel = sexsel;
	}

	public String getBlogclasssel() {
		return blogclasssel;
	}

	public void setBlogclasssel(String blogclasssel) {
		this.blogclasssel = blogclasssel;
	}

	public byte[] getImg() {
		return img;
	}

	public void setImg(byte[] img) {
		this.img = img;
	}

	public String getEncripedPass() {
		return encripedPass;
	}

	public void setEncripedPass(String encripedPass) {
		this.encripedPass = encripedPass;
	}

	public Integer getManagerflag() {
		return managerflag;
	}

	public void setManagerflag(Integer managerflag) {
		this.managerflag = managerflag;
	}

	public Integer getExpert() {
		return expert;
	}

	public void setExpert(Integer expert) {
		this.expert = expert;
	}

	public Double getMaxscore() {
		return maxscore;
	}

	public void setMaxscore(Double maxscore) {
		this.maxscore = maxscore;
	}

	public Integer getJointype() {
		return jointype;
	}

	public void setJointype(Integer jointype) {
		this.jointype = jointype;
	}

	public Integer getActive() {
		return active;
	}

	public void setActive(Integer active) {
		this.active = active;
	}

}