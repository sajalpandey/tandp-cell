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
public class feedbackPojo {

    /**
     * @return the feed_id
     */
    public int getFeed_id() {
        return feed_id;
    }

    /**
     * @param feed_id the feed_id to set
     */
    public void setFeed_id(int feed_id) {
        this.feed_id = feed_id;
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
     * @return the location
     */
    public String getLocation() {
        return location;
    }

    /**
     * @param location the location to set
     */
    public void setLocation(String location) {
        this.location = location;
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
     * @return the experiance
     */
    public String getExperiance() {
        return experiance;
    }

    /**
     * @param experiance the experiance to set
     */
    public void setExperiance(String experiance) {
        this.experiance = experiance;
    }
    private int feed_id;
    private int test_id;
    private int stu_id;
    private String location;
    private String skills;
    private String experiance;
}
