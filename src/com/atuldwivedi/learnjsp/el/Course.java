package com.atuldwivedi.learnjsp.el;

public class Course {

	private String courseName;

	private Assignment assignment;

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public Assignment getAssignment() {
		return assignment;
	}

	public void setAssignment(Assignment assignment) {
		this.assignment = assignment;
	}
	
	public Course(String courseName, Assignment assignment) {
		super();
		this.courseName = courseName;
		this.assignment = assignment;
	}

	@Override
	public String toString() {
		return "Course [courseName=" + courseName + ", assignment=" + assignment + "]";
	}
}
