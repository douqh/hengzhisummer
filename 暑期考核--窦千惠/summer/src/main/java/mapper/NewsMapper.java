package mapper;

import entity.news;
import entity.page;
import entity.user;

import java.util.List;

public interface NewsMapper {
    public List<news> AllNews();

    public news OneNews(news News);

    public List<news> SearchNews(String searchContent);

    public List<news> PageNews(page Page);

    public void DeleteNews(news News);

    public void UpdateNews(news News);

    public void AddNews(news News);

}
