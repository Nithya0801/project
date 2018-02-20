package com.project.Model;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;



@Entity(name = "User")
@Table(uniqueConstraints=@UniqueConstraint(columnNames="email"))
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
    @NotBlank(message = "Please enter Name!")
	@Column(name = "name")
	private String name;
    @NotBlank(message = "Please enter Password!")
	@Column(name="pwd")
	private String pwd;
    @NotBlank(message = "Please enter Email!")
    @Email
	@Column(name="email")
	private String email;
	@NotBlank(message = "Please enter your phoneNumber.")
    @Size(min = 10, message = "Your phone must contain 10 numbers")
	@Column(name = "phone")
	private String phone;
	
	 @NotBlank(message = "Please enter Address!")
	
	@Column(name = "address")
	private String address;
	 
	 @NotBlank(message = "Please enter Country!")
	@Column(name = "country")
	private String country;
	
	@Column(name="enabled")
	private String enabled;
	
	public String getEnabled() { 
		return enabled;
	}

	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Column(name="role")
	private String role;

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}

