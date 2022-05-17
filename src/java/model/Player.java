/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author ASUS
 */
public class Player {

    private int playerId;
    private String playerName;
    private String img;
    private Date dob;
    private String birthPlace;
    private int nationalityId;
    private float height;
    private float weight;
    private int roleId;
    private String imgBackground;
    private int number;
    private String shortDescription;
    private String playerInfor;
    private String detail;

    public Player() {
    }

    public Player(int playerId, String playerName, String img, Date dob, String birthPlace, int nationalityId, float height, float weight, int roleId, String imgBackground, int number, String shortDescription, String playerInfor, String detail) {
        this.playerId = playerId;
        this.playerName = playerName;
        this.img = img;
        this.dob = dob;
        this.birthPlace = birthPlace;
        this.nationalityId = nationalityId;
        this.height = height;
        this.weight = weight;
        this.roleId = roleId;
        this.imgBackground = imgBackground;
        this.number = number;
        this.shortDescription = shortDescription;
        this.playerInfor = playerInfor;
        this.detail = detail;
    }

    public int getPlayerId() {
        return playerId;
    }

    public void setPlayerId(int playerId) {
        this.playerId = playerId;
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getBirthPlace() {
        return birthPlace;
    }

    public void setBirthPlace(String birthPlace) {
        this.birthPlace = birthPlace;
    }

    public int getNationalityId() {
        return nationalityId;
    }

    public void setNationalityId(int nationalityId) {
        this.nationalityId = nationalityId;
    }

    public float getHeight() {
        return height;
    }

    public void setHeight(float height) {
        this.height = height;
    }

    public float getWeight() {
        return weight;
    }

    public void setWeight(float weight) {
        this.weight = weight;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public String getImgBackground() {
        return imgBackground;
    }

    public void setImgBackground(String imgBackground) {
        this.imgBackground = imgBackground;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    public String getPlayerInfor() {
        return playerInfor;
    }

    public void setPlayerInfor(String playerInfor) {
        this.playerInfor = playerInfor;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }
    
    public String getDateFormat(){
        SimpleDateFormat df = new SimpleDateFormat("dd-MM-yyyy");
        return df.format(dob);
    }
    
    public String getDateLetter(){
        SimpleDateFormat df = new SimpleDateFormat("dd MMMM yyyy");
        return df.format(dob);
    }

    @Override
    public String toString() {
        return "Player{" + "playerId=" + playerId + ", playerName=" + playerName + ", img=" + img + ", dob=" + dob + ", birthPlace=" + birthPlace + ", nationalityId=" + nationalityId + ", height=" + height + ", weight=" + weight + ", roleId=" + roleId + ", imgBackground=" + imgBackground + ", number=" + number + ", shortDescription=" + shortDescription + ", playerInfor=" + playerInfor + ", detail=" + detail + '}'+"\n";
    }


}
