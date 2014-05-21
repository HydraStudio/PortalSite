package com.portal.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="order_t")
public class Order {

	@Id
	@GeneratedValue
	private Long id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="email")
	private String email;
	
	@Column(name="school")
	private String school;
	
	@Column(name="grade")
	private String grade;
	
	@Column(name="speciality")
	private String speciality;
	
	@Column(name="phone")
	private String phone;
	
	@Column(name="is_work")
	private Boolean isWork;
	
	@Column(name="gpa")
	private String gpa;
	
	@Column(name="gre")
	private String gre;
	
	@Column(name="gmat")
	private String gmat;
	
	@Column(name="toefl")
	private String toefl;
	
	@Column(name="ielts")
	private String ielts;
	
	@Column(name="way_know_us")
	private String wayKnowUs;
	
	@Column(name="receive_letter")
	private Boolean receiveLetter;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getSpeciality() {
		return speciality;
	}

	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Boolean getIsWork() {
		return isWork;
	}

	public void setIsWork(Boolean isWork) {
		this.isWork = isWork;
	}

	public String getGpa() {
		return gpa;
	}

	public void setGpa(String gpa) {
		this.gpa = gpa;
	}

	public String getGre() {
		return gre;
	}

	public void setGre(String gre) {
		this.gre = gre;
	}

	public String getGmat() {
		return gmat;
	}

	public void setGmat(String gmat) {
		this.gmat = gmat;
	}

	public String getToefl() {
		return toefl;
	}

	public void setToefl(String toefl) {
		this.toefl = toefl;
	}

	public String getIelts() {
		return ielts;
	}

	public void setIelts(String ielts) {
		this.ielts = ielts;
	}

	public String getWayKnowUs() {
		return wayKnowUs;
	}

	public void setWayKnowUs(String wayKnowUs) {
		this.wayKnowUs = wayKnowUs;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Boolean getReceiveLetter() {
		return receiveLetter;
	}

	public void setReceiveLetter(Boolean receiveLetter) {
		this.receiveLetter = receiveLetter;
	}
}
