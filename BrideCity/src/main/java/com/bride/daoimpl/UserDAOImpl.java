package com.bride.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bride.dao.UserDAO;
import com.bride.model.Cart;
import com.bride.model.User;



@Repository
public class UserDAOImpl  implements  UserDAO

{
	@Autowired
	private SessionFactory sessionFactory; 
	
	public void addUser(User user) 
	{
		Session session = sessionFactory.getCurrentSession();
		
		user.setEnabled(true);    //  setting  permanently
		user.setRole("ROLE_USER");  //        "

		session.saveOrUpdate(user);
		
		Cart cart = new Cart();
		cart.setCartId(user.getUserId()); 
		cart.setUserId(user.getUserId());
		
		session.saveOrUpdate(cart);
		session.saveOrUpdate(user);
		
		
	}

	public User getUserId(int userId) 
	{
		List<User> u = sessionFactory.getCurrentSession().createQuery("from User where userId = "+userId).getResultList();
		return u.get(0);
	}

	public User getUserByusername(String username) 
	{
		List<User> userList = sessionFactory.getCurrentSession().createQuery("from User where username = "+"'"+username+"'").getResultList();		
		return userList.get(0);
	}
}
