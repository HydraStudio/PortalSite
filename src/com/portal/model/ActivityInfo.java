package com.portal.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="activity_info")
public class ActivityInfo {

	@Id
	@GeneratedValue
	private Long id;
	
	@Column(name="title")
	private String title;
	
//	@OneToMany(cascade= CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="activityInfo")
//	private Set<Resource> imageUrls;
	
	@Column(name="description", length=1000)
	private String description;

	@Column(name="date")
	private Date date;
	
	@Column(name="detail", length=20000)
	private String detail;
	
	@Column(name="image_url")
	private String imageUrl;
	
	@Column(name="location")
	private String location;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
}
