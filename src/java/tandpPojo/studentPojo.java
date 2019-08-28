
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tandpPojo;

import java.sql.Date;

/**
 *
 * @author SAJAL-PC
 */
public class studentPojo {

    /**
     * @return the photo
     */
    public String getPhoto() {
        return photo;
    }

    /**
     * @param photo the photo to set
     */
    public void setPhoto(String photo) {
        this.photo = photo;
    }

    /**
     * @return the conpass
     */
    public String getConpass() {
        return conpass;
    }

    /**
     * @param conpass the conpass to set
     */
    public void setConpass(String conpass) {
        this.conpass = conpass;
    }

    private int stu_id;
    private String stu_name;
    private String password;
    private String conpass;
    private String date;
    private String branch;
    private String email;
    private String gender;
    private String address;
    private String photo;
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
     * @return the stu_name
     */
    public String getStu_name() {
        return stu_name;
    }

    /**
     * @param stu_name the stu_name to set
     */
    public void setStu_name(String stu_name) {
        this.stu_name = stu_name;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the date
     */
    public String getDate() {
        return date;
    }

    /**
     * @param date the date to set
     */
    public void setDate(String date) {
        this.date = date;
    }

    /**
     * @return the branch
     */
    public String getBranch() {
        return branch;
    }

    /**
     * @param branch the branch to set
     */
    public void setBranch(String branch) {
        this.branch = branch;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }
    
    
}
