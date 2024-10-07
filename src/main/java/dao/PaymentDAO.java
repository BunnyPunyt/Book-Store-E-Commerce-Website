package dao;

import model.Payment;

public class PaymentDAO extends ProjectDAO<Payment>{
	public PaymentDAO() {
        super(Payment.class);
    }
}
