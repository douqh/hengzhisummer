package entity;

import java.util.Date;

public class news {
    private int newsID;
    private String newsTitle;
    private String newsAuthor;
    private String newsContent;
    private Date newsWriteTime;
    private Date newsAlterTime;
    private int newsSortID;

    public int getNewsID() {
        return newsID;
    }

    public void setNewsID(int newsID) {
        this.newsID = newsID;
    }

    public String getNewsTitle() {
        return newsTitle;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsTitle = newsTitle;
    }

    public String getNewsAuthor() {
        return newsAuthor;
    }

    public void setNewsAuthor(String newsAuthor) {
        this.newsAuthor = newsAuthor;
    }

    public String getNewsContent() {
        return newsContent;
    }

    public void setNewsContent(String newContent) {
        this.newsContent = newContent;
    }

    public Date getNewsWriteTime() {
        return newsWriteTime;
    }

    public void setNewsWriteTime(Date newsWriteTime) {
        this.newsWriteTime = newsWriteTime;
    }

    public Date getNewsAlterTime() {
        return newsAlterTime;
    }

    public void setNewsAlterTime(Date newsAlterTime) {
        this.newsAlterTime = newsAlterTime;
    }

    public int getNewsSortID() {
        return newsSortID;
    }

    public void setNewsSortID(int newsSortID) {
        this.newsSortID = newsSortID;
    }
}
