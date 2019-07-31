package mapper;

import entity.news;
import entity.notice;
import entity.page;

import java.util.List;

public interface NoticeMapper {
    public List<notice> AllNotice();

    public List<notice> SearchNotice(String searchContent);

    public List<notice> PageNotice(page Page);

    public void DeleteNotice(notice Notice);

    public void UpdateNotice(notice Notice);

    public void AddNotice(notice Notice);
}
