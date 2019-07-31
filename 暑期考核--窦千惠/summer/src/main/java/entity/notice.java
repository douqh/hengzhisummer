package entity;

import java.util.Date;

public class notice {
    private int noticeID;
    private String noticeTitle;
    private String noticeAuthor;
    private String noticeContent;
    private Date noticeWriteTime;
    private Date noticeAlterTime;
    private int noticeSortID;

    public int getNoticeID() {
        return noticeID;
    }

    public void setNoticeID(int noticeID) {
        this.noticeID = noticeID;
    }

    public String getNoticeTitle() {
        return noticeTitle;
    }

    public void setNoticeTitle(String noticeTitle) {
        this.noticeTitle = noticeTitle;
    }

    public String getNoticeAuthor() {
        return noticeAuthor;
    }

    public void setNoticeAuthor(String noticeAuthor) {
        this.noticeAuthor = noticeAuthor;
    }

    public String getNoticeContent() {
        return noticeContent;
    }

    public void setNoticeContent(String noticeContent) {
        this.noticeContent = noticeContent;
    }

    public Date getNoticeWriteTime() {
        return noticeWriteTime;
    }

    public void setNoticeWriteTime(Date noticeWriteTime) {
        this.noticeWriteTime = noticeWriteTime;
    }

    public Date getNoticeAlterTime(Date noticeAlterTime) {
        return noticeAlterTime;
    }

    public void setNoticeAlterTime(Date noticeAlterTime) {
        this.noticeAlterTime = noticeAlterTime;
    }

    public int getNoticeSortID() {
        return noticeSortID;
    }

    public void setNoticeSortID(int noticeSortID) {
        this.noticeSortID = noticeSortID;
    }
}
