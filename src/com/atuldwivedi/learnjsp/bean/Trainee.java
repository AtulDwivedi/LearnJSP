package com.atuldwivedi.learnjsp.bean;

public class Trainee {

	private int traineeID;
	private String traineeName;
	public Trainee() {
		super();
	}
	public int getTraineeID() {
		return traineeID;
	}
	public void setTraineeID(int traineeID) {
		this.traineeID = traineeID;
	}
	public String getTraineeName() {
		return traineeName;
	}
	public void setTraineeName(String traineeName) {
		this.traineeName = traineeName;
	}
	
	public String getIntituteName(){
		return "My Institute";
	}
}
