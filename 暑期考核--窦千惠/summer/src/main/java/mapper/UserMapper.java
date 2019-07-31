package mapper;

import entity.page;
import entity.user;

import java.util.List;

public interface UserMapper {
    public user login(user User);

    public void register(user User);

    public List<user> AllUser();

    public List<user> PageUser(page Page);

    public void AddUser(user User);

    public void DeleteUser(user User);

    public void UpdateUser(user User);

    public void UpdatePassword(user User);
}

