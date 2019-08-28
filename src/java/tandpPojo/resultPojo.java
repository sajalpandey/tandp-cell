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
public class resultPojo {

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
     * @return the test_id
     */
    public int getTest_id() {
        return test_id;
    }

    /**
     * @param test_id the test_id to set
     */
    public void setTest_id(int test_id) {
        this.test_id = test_id;
    }

    /**
     * @return the job_profile
     */
    public String getJob_profile() {
        return job_profile;
    }

    /**
     * @param job_profile the job_profile to set
     */
    public void setJob_profile(String job_profile) {
        this.job_profile = job_profile;
    }

    /**
     * @return the year
     */
    public String getYear() {
        return year;
    }

    /**
     * @param year the year to set
     */
    public void setYear(String year) {
        this.year = year;
    }
    private int stu_id;
    private int test_id;
    private String job_profile;
    private String year;
}
