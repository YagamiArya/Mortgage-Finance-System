package com.bean;

import java.io.File;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="LOAN_DETAILS")
public class LoanDetails {
	
	@Override
	public String toString() {
		return "LoanDetails [name=" + name + ", address=" + address
				+ ", phoneNumber=" + phoneNumber + ", email=" + email + ", otherContact=" + otherContact + ", resume="
				+ resume + ", projectPlan=" + projectPlan + ", personalCreditReport=" + personalCreditReport
				+ ", businessCreditReport=" + businessCreditReport + ", financialStatements=" + financialStatements
				+ ", mortgageItem=" + mortgageItem + ", valueOfMortgageItem=" + valueOfMortgageItem + ", loanAmount="
				+ loanAmount + ", loanTenure=" + loanTenure + ", interestRate=" + interestRate + ", emiOptions="
				+ emiOptions + ", dayOfPayment=" + dayOfPayment + ", loanRequestDate=" + loanRequestDate + "]";
	}
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int loanApplicantNumber;
	
	private String name;
	private String address;
	private String phoneNumber;
	private String email;
	private String otherContact;
	private File resume;
	private File projectPlan;
	private File personalCreditReport;
	private File businessCreditReport;
	private File financialStatements;
	private String mortgageItem ;
	private String valueOfMortgageItem;
	private String loanAmount;
	private String loanTenure;
	private String interestRate;
	private String emiOptions;
	private String dayOfPayment;
	private String loanRequestDate;
	
	public int getLoanApplicantNumber() {
		return loanApplicantNumber;
	}
	public void setLoanApplicantNumber(int loanApplicantNumber) {
		this.loanApplicantNumber = loanApplicantNumber;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getOtherContact() {
		return otherContact;
	}
	public void setOtherContact(String otherContact) {
		this.otherContact = otherContact;
	}
	public File getResume() {
		return resume;
	}
	public void setResume(File resume) {
		this.resume = resume;
	}
	public File getProjectPlan() {
		return projectPlan;
	}
	public void setProjectPlan(File projectPlan) {
		this.projectPlan = projectPlan;
	}
	public File getPersonalCreditReport() {
		return personalCreditReport;
	}
	public void setPersonalCreditReport(File personalCreditReport) {
		this.personalCreditReport = personalCreditReport;
	}
	public File getBusinessCreditReport() {
		return businessCreditReport;
	}
	public void setBusinessCreditReport(File businessCreditReport) {
		this.businessCreditReport = businessCreditReport;
	}
	public File getFinancialStatements() {
		return financialStatements;
	}
	public void setFinancialStatements(File financialStatements) {
		this.financialStatements = financialStatements;
	}
	public String getMortgageItem() {
		return mortgageItem;
	}
	public void setMortgageItem(String mortgageItem) {
		this.mortgageItem = mortgageItem;
	}
	public String getValueOfMortgageItem() {
		return valueOfMortgageItem;
	}
	public void setValueOfMortgageItem(String valueOfMortgageItem) {
		this.valueOfMortgageItem = valueOfMortgageItem;
	}
	public String getLoanAmount() {
		return loanAmount;
	}
	public void setLoanAmount(String loanAmount) {
		this.loanAmount = loanAmount;
	}
	public String getLoanTenure() {
		return loanTenure;
	}
	public void setLoanTenure(String loanTenure) {
		this.loanTenure = loanTenure;
	}
	public String getInterestRate() {
		return interestRate;
	}
	public void setInterestRate(String interestRate) {
		this.interestRate = interestRate;
	}
	public String getEmiOptions() {
		return emiOptions;
	}
	public void setEmiOptions(String emiOptions) {
		this.emiOptions = emiOptions;
	}
	public String getDayOfPayment() {
		return dayOfPayment;
	}
	public void setDayOfPayment(String dayOfPayment) {
		this.dayOfPayment = dayOfPayment;
	}
	public String getLoanRequestDate() {
		return loanRequestDate;
	}
	public void setLoanRequestDate(String loanRequestDate) {
		this.loanRequestDate = loanRequestDate;
	}
	

	
	
	


}
