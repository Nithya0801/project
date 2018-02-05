package com.project.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity(name="product")
public class Product {

	@Id
	@GeneratedValue
	private int pid;
	
	@Column(name="pname")
	private String pname;
	@Column(name="desc")
	private String desc;
	@Column(name="price")
	private Float price;
	@Column(name="stock")
	private int stock;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="cid")
	private Category category;

	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="sid")
	private Supplier supplier;
	@Transient
	MultipartFile file;
	
	@Column(name="imgname")
	private String imgname;

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getImgname() {
		return imgname;
	}

	public void setImgname(String imgname) {
		this.imgname = imgname;
	}
	
	
	
}
