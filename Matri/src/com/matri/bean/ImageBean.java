package com.matri.bean;

import java.io.InputStream;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class ImageBean {

	CommonsMultipartFile file;

	private int imageId;

	private int userId;

	private byte[] imageFileByte;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public CommonsMultipartFile getFile() {
		return file;
	}

	public void setFile(CommonsMultipartFile file) {
		this.file = file;
	}

	public int getImageId() {
		return imageId;
	}

	public void setImageId(int imageId) {
		this.imageId = imageId;
	}

	public byte[] getImageFileByte() {
		return imageFileByte;
	}

	public void setImageFileByte(byte[] imageFileByte) {
		this.imageFileByte = imageFileByte;
	}

}
