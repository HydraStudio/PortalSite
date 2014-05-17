package com.portal.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="activity_info")
public class ActivityInfo {

	@Id
	@GeneratedValue
	private Long id;
	
	@Column(name="title")
	private String title;
	
	@OneToMany(cascade= CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="activityInfo")
	private Set<Resource> imageUrls;
	
	@Column(name="description")
	private String description;

	@Column(name="date")
	private Date date;
	
	@Column(name="like_count")
	private Long likeCount;
	
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

	public Set<Resource> getImageUrls() {
		return imageUrls;
	}

	public void setImageUrls(Set<Resource> imageUrls) {
		this.imageUrls = imageUrls;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Long getLikeCount() {
		return likeCount;
	}

	public void setLikeCount(Long likeCount) {
		this.likeCount = likeCount;
	}
}
