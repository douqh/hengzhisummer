package mapper;

import entity.*;

import java.util.List;

public interface SortMapper {
    public List<sort> AllSort();

    public void AddSort(sort Sort);

    public void DeleteSort(sort Sort);

    public void UpdateSort(sort Sort);

    public List<news> SearchNewsSort(String searchContent);

    public List<notice> SearchNoticeSort(String searchContent);

}
