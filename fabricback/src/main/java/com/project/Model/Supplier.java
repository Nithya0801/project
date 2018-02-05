package com.project.Model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name="supplier")
public class Supplier {

	@Id
	@Column(name="sid")
	private int sid;
	@Column(name="sname")
	private String sname;
	

	@OneToMany(targetEntity=Product.class,fetch=FetchType.EAGER,mappedBy="supplier")
	private Set<Product> products=new HashSet<Product>(0);


	public int getSid() {
		return sid;
	}


	public void setSid(int sid) {
		this.sid = sid;
	}


	public String getSname() {
		return sname;
	}


	public void setSname(String sname) {
		this.sname = sname;
	}


	public Set<Product> getProducts() {
		return products;
	}


	public void setProducts(Set<Product> products) {
		this.products = products;
	}




	
	
}
