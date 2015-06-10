package com.bps.core.entities;

import java.io.Serializable;
import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.bps.core.beans.UserBean;
import com.bps.util.converter.BeanEntityConverter;
import com.inspiresoftware.lib.dto.geda.assembler.DTOAssembler;


/**
 * The persistent class for the bps_user_info database table.
 * 
 */
@Entity
@Table(name="bps_user_info")
@NamedQuery(name="BpsUserInfo.findAll", query="SELECT b FROM BpsUserInfo b")
public class BpsUserInfo implements Serializable, BeanEntityConverter<BpsUserInfo, UserBean> {
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;

	@Column(name="user_email")
	private String userEmail;

	@Column(name="user_group_id")
	private String userGroupId;

	@Column(name="user_id")
	private String userId;

	@Column(name="user_name")
	private String userName;

	@Column(name="user_pass")
	private String userPass;

	@Column(name="user_phone")
	private String userPhone;

	@Column(name="user_type")
	private String userType;

	@Column(name="user_image")
	private Blob userImage;
	
	@Transient
	private boolean updatedPassword;
	@Transient
	private boolean updatedImage;
	
	public BpsUserInfo() {
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUserEmail() {
		return this.userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserGroupId() {
		return this.userGroupId;
	}

	public void setUserGroupId(String userGroupId) {
		this.userGroupId = userGroupId;
	}

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPass() {
		return this.userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public String getUserPhone() {
		return this.userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserType() {
		return this.userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public Blob getUserImage() {
		return userImage;
	}

	public void setUserImage(Blob userImage) {
		this.userImage = userImage;
	}

	public boolean isUpdatedPassword() {
		return updatedPassword;
	}

	public void setUpdatedPassword(boolean updatedPassword) {
		this.updatedPassword = updatedPassword;
	}

	public boolean isUpdatedImage() {
		return updatedImage;
	}

	public void setUpdatedImage(boolean updatedImage) {
		this.updatedImage = updatedImage;
	}
	
	@Override
	public String toString() {
		StringBuffer tempBuffer = new StringBuffer("BPS_USER_INFO['ID':").append(this.id).append(",'USER_ID':")
			.append(this.userId).append(",'USER_NAME':").append(this.userName).append(",'USER_PASS':updated#")
			.append(this.updatedPassword).append(",'USER_GROUP_ID':").append(this.userGroupId).append(",'USER_TYPE':")
			.append(this.userType).append(",'USER_EMAIL':").append(this.userEmail).append(",'USER_PHONE':")
			.append(this.userPhone).append(",'USER_IMAGE':updated#").append(this.updatedImage).append("]");
		return tempBuffer.toString();
	}
	
	@Override
	public UserBean convertEntityToBean() {
		UserBean userBean = new UserBean();
		DTOAssembler.newAssembler(new UserBean().getClass(), this.getClass()).assembleDto(userBean, this, null, null);
		return userBean;
	}

	@Override
	public BpsUserInfo convertBeanToEntity() {
		return null;
	}
}