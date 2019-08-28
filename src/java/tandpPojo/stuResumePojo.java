/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tandpPojo;

/**
 *
 * @author SAJAL-PC
 */
public class stuResumePojo {

    /**
     * @return the stu_id
     */
    public int getStu_id() {
        return stu_id;
    }

    /**
     * @param stu_id the stu_id to set
     */
    public void setStu_id(int stu_id) {
        this.stu_id = stu_id;
    }

    /**
     * @return the edu_details
     */
    public String getEdu_details() {
        return edu_details;
    }

    /**
     * @param edu_details the edu_details to set
     */
    public void setEdu_details(String edu_details) {
        this.edu_details = edu_details;
    }

    /**
     * @return the assessment
     */
    public String getAssessment() {
        return assessment;
    }

    /**
     * @param assessment the assessment to set
     */
    public void setAssessment(String assessment) {
        this.assessment = assessment;
    }

    /**
     * @return the skills
     */
    public String getSkills() {
        return skills;
    }

    /**
     * @param skills the skills to set
     */
    public void setSkills(String skills) {
        this.skills = skills;
    }

    /**
     * @return the cgpa
     */
    public float getCgpa() {
        return cgpa;
    }

    /**
     * @param cgpa the cgpa to set
     */
    public void setCgpa(float cgpa) {
        this.cgpa = cgpa;
    }
    private int stu_id;
    private String edu_details;
    private String assessment;
    private String skills;
    private float cgpa;
}
