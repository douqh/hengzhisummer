package DB;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.Reader;

public class DBcon {
    public static SqlSession getsqlsession() throws IOException {
//通过配置文件获取数据库连接信息
        Reader reader = Resources.getResourceAsReader("mybatis-config.xml");
//通过配置信息构建一个SqlSessionFactory
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
//通过SqlSessionFactory打开一个数据库会话
        SqlSession sqlsession = sqlSessionFactory.openSession();
        return sqlsession;
    }
}
