/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ASUS
 */
public class Nationality {

    private int nationalityId;
    private String nationalityName;
    private String img;

    public Nationality() {
    }

    public Nationality(int nationalityId, String nationalityName, String img) {
        this.nationalityId = nationalityId;
        this.nationalityName = nationalityName;
        this.img = img;
    }

    public int getNationalityId() {
        return nationalityId;
    }

    public void setNationalityId(int nationalityId) {
        this.nationalityId = nationalityId;
    }

    public String getNationalityName() {
        return nationalityName;
    }

    public void setNationalityName(String nationalityName) {
        this.nationalityName = nationalityName;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public String toString() {
        return "Nationality{" + "nationalityId=" + nationalityId + ", nationalityName=" + nationalityName + ", img=" + img + '}' + "\n";
    }

}
