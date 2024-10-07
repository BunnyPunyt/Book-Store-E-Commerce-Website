package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.TypedQuery;


import controller.jpaUtils;
import model.User;


public class UserDAO extends ProjectDAO<User> {
	private List<User> users;
	private static EntityManagerFactory factory;
	
	public UserDAO() {
        super(User.class);
    }
	
	public User checkLogin(String email, String password) {
		EntityManager em = jpaUtils.getEntityManager();
		String japl = "select u from User u where u.email = :id and u.matkhau = :password";
		TypedQuery<User> query = em.createQuery(japl, User.class);
		query.setParameter("id", email);
		query.setParameter("password", password);
		return query.getSingleResult();
	}
	
	public List<User> findAll() {
		EntityManager em = jpaUtils.getEntityManager();
		TypedQuery<User> query = em.createNamedQuery("User.findAll", User.class);
		return query.getResultList();
	}
	public int count() {
		EntityManager em = jpaUtils.getEntityManager();
		String japl = "select count( u) from User u ";
		Query query = em.createQuery(japl);
		return ((Long) query.getSingleResult()).intValue();
	}
	public User getUser(String username) {
        for (User user : users) {
            if (user.getMaND().equals(username)) {
                return user;
            }
        }
        return null;
    }
	public static List<User> selectAll() {
		EntityManager em = factory.createEntityManager();
		List<User> userList = null;

		try {
			userList = em.createQuery("SELECT u FROM User u", User.class).getResultList();
		} finally {
			em.close();
		}

		return userList;
	}
}
