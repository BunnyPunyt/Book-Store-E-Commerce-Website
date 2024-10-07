package dao;

import model.Order;

public class OrderDAO extends ProjectDAO<Order> {
	public OrderDAO() {
        super(Order.class);
    }
}
