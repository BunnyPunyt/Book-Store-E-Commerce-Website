package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import controller.jpaUtils;
import model.Cart;
import model.User;

public class CartDAO extends ProjectDAO<Cart> {
	public CartDAO() {
        super(Cart.class);
    }
	
	public List<Cart> selectByUserID(String userID) {
		EntityManager em = jpaUtils.getEntityManager();
		String japl = "select c from Cart c where c.user.maND = :id ";
		TypedQuery<Cart> query = em.createQuery(japl, Cart.class);
		query.setParameter("id", userID);
		return query.getResultList();
	}
	
	public void deleteByUserID(String userID) {
		EntityManager em = jpaUtils.getEntityManager();
	    em.getTransaction().begin();
	    String jpql = "DELETE FROM Cart c WHERE c.user.maND = :id";
	    Query query = em.createQuery(jpql);
	    query.setParameter("id", userID);
	    int rowsDeleted = query.executeUpdate();
	    em.getTransaction().commit();
	    em.close();
	}
	
}
