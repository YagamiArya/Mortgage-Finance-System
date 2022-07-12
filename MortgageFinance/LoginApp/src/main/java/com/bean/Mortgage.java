package com.bean;


import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "mortgage")
public class Mortgage {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	private String MortgageItemType;
	private double value;
	private int rateOfInterest;
	private String lastUpdatedDate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMortgageItemType() {
		return MortgageItemType;
	}

	public void setMortgageItemType(String mortgageItemType) {
		MortgageItemType = mortgageItemType;
	}

	public double getValue() {
		return value;
	}

	public void setValue(double value) {
		this.value = value;
	}

	public int getRateOfInterest() {
		return rateOfInterest;
	}

	public void setRateOfInterest(int rateOfInterest) {
		this.rateOfInterest = rateOfInterest;
	}

	public String getLastUpdatedDate() {
		return lastUpdatedDate;
	}

	public void setLastUpdatedDate(String lastUpdatedDate) {
		this.lastUpdatedDate = lastUpdatedDate;
	}

	@Override
	public String toString() {
		return "Mortgage [id=" + id + ", MortgageItemType=" + MortgageItemType + ", value=" + value
				+ ", rateOfInterest=" + rateOfInterest + ", lastUpdatedDate=" + lastUpdatedDate + "]";
	}
	
	

}
