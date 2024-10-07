package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import controller.jpaUtils;
import model.BookDetail;
import model.User;

public class BookDetailDAO extends ProjectDAO<BookDetail> {
	public BookDetailDAO() {
		super(BookDetail.class);
	}

	public List<BookDetail> selectByBookID(String maSP) {
		EntityManager em = jpaUtils.getEntityManager();
		String japl = "select bd from BookDetail bd where bd.book.maSP =: maSP";
		TypedQuery<BookDetail> query = em.createQuery(japl, BookDetail.class);
		query.setParameter("maSP", maSP);
		return query.getResultList();

	}
	
	public BookDetail selectByBookIDAndSeason(String maSP, String mua) {
		EntityManager em = jpaUtils.getEntityManager();
		String japl = "select bd from BookDetail bd where bd.book.maSP =: maSP and bd.mua =: mua";
		TypedQuery<BookDetail> query = em.createQuery(japl, BookDetail.class);
		query.setParameter("maSP", maSP);
		query.setParameter("mua", mua);
		return query.getSingleResult();

	}
}
