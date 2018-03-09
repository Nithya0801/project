package com.project2.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.project2.Dao.BlogDao;
import com.project2.DaoImpl.BlogDaoImpl;
import com.project2.Model.Blog;
import com.project2.Model.Forum;
import com.project2.Model.JobModel;
import com.project2.Model.User;

@Configuration
@ComponentScan({"com.project2"})
@EnableTransactionManagement
public class DBConfig {

	
	public DataSource getDataSource()
	{
		   DriverManagerDataSource datasource = new DriverManagerDataSource();
		   datasource.setDriverClassName("oracle.jdbc.driver.OracleDriver");
		   datasource.setUrl("jdbc:oracle:thin:@localhost:1521:XE");
		   datasource.setUsername("sample");
		   datasource.setPassword("oracle");
		   return datasource;
	}
	@Autowired
	@Bean(name="sessionFactory")
	public SessionFactory getSessionFactory()
	{
		   Properties prop = new Properties();
	        prop.put("hibernate.dialect", "org.hibernate.dialect.Oracle10gDialect");
	        prop.put("hibernate.hbm2ddl.auto", "update");

	        LocalSessionFactoryBuilder builder = new LocalSessionFactoryBuilder(getDataSource());
	        builder.addProperties(prop);
	        builder.addAnnotatedClass(Blog.class);
	        builder.addAnnotatedClass(Forum.class);
	        builder.addAnnotatedClass(JobModel.class);
	        builder.addAnnotatedClass(User.class);
	        SessionFactory sessionFactory=builder.buildSessionFactory();
	        System.out.println("---------------Session Object-------------");
	        
	        return sessionFactory;
	}
	
	@Bean(name="blogDao")
	public BlogDao getBlogDao()
	{
		return new BlogDaoImpl();
	}
	
	
	@Bean
	@Autowired
	public HibernateTransactionManager txManager(SessionFactory sessionFactory) {
	        return new HibernateTransactionManager(sessionFactory);
	    }
	 
	 
}
