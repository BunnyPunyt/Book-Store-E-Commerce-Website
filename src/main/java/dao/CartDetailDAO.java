package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import controller.jpaUtils;
import model.CartDetail;


public class CartDetailDAO {
	public List<CartDetail> selectCartDetailByUserID(String UserID) {
		String jpql = "select new model.CartDetail(c.user.maND, c.maGH, c.book.maSP, c.soluong, c.mua, c.book.tenSP, c.book.gia, c.book.hinhchinh) from Cart c where c.user.maND = :userID";
		EntityManager em = jpaUtils.getEntityManager();
		TypedQuery<CartDetail> query = em.createQuery(jpql, CartDetail.class);
		query.setParameter("userID", UserID);
		return query.getResultList();
	}
}
