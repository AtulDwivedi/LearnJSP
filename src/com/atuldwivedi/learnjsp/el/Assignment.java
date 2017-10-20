package com.atuldwivedi.learnjsp.el;

public class Assignment {
	private String assinmentName;
	private String assignementDescription;

	public String getAssinmentName() {
		return assinmentName;
	}

	public void setAssinmentName(String assinmentName) {
		this.assinmentName = assinmentName;
	}

	public String getAssignementDescription() {
		return assignementDescription;
	}

	public void setAssignementDescription(String assignementDescription) {
		this.assignementDescription = assignementDescription;
	}
	
	public Assignment(String assinmentName, String assignementDescription) {
		super();
		this.assinmentName = assinmentName;
		this.assignementDescription = assignementDescription;
	}

	@Override
	public String toString() {
		return "Assignment [assinmentName=" + assinmentName + ", assignementDescription=" + assignementDescription
				+ "]";
	}

}
