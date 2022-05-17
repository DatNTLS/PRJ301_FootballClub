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
public class News {

    private int newsId;
    private String title;
    private String img;
    private Date datePublished;
    private String shortDescription;
    private String content;
    private String detail;
    private int typeId;

    public News() {
    }

    public News(int newsId, String title, String img, Date datePublished, String shortDescription, String content, String detail, int typeId) {
        this.newsId = newsId;
        this.title = title;
        this.img = img;
        this.datePublished = datePublished;
        this.shortDescription = shortDescription;
        this.content = content;
        this.detail = detail;
        this.typeId = typeId;
    }

    public int getNewsId() {
        return newsId;
    }

    public void setNewsId(int newsId) {
        this.newsId = newsId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Date getDatePublished() {
        return datePublished;
    }

    public void setDatePublished(Date datePublished) {
        this.datePublished = datePublished;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }
    
    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }
    
    public String getDateFormat(){
        SimpleDateFormat df = new SimpleDateFormat("dd-MM-yyyy");
        return df.format(datePublished);
    }
    
    public String getDateLetter(){
        SimpleDateFormat df = new SimpleDateFormat("dd MMMM yyyy");
        return df.format(datePublished);
    }

    @Override
    public String toString() {
        return "News{" + "newsId=" + newsId + ", title=" + title + ", img=" + img + ", datePublished=" + datePublished + ", shortDescription=" + shortDescription + ", content=" + content + ", detail=" + detail + ", typeId=" + typeId + '}'+"\n";
    }

}
