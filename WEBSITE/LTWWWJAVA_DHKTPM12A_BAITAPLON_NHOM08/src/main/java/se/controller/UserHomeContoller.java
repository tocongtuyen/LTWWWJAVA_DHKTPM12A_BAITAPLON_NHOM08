package se.controller;

import java.util.List;

import javax.mail.internet.MimeMessage;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import se.model.Category;
import se.model.Producer;
import se.model.Product;
import se.other.ShoppingCart;

@Controller
@Transactional
@RequestMapping(value = "user")
public class UserHomeContoller {

	@Autowired
	JavaMailSender mailSender;
	@Autowired
	SessionFactory sessionFactory;

	



	

	@RequestMapping(value = "home")
	public String userHome() {
		return "user/index";
	}

	@RequestMapping(value = "contact")
	public String userContact() {
		return "user/contact";
	}

	@Autowired
	protected ShoppingCart cart;

	@ModelAttribute("cart")
	public ShoppingCart getShoppingCart() {
		return cart;
	}

	@SuppressWarnings("unchecked")
	@ModelAttribute("category")
	public List<Category> getCategory() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM Category").list();
	}

	@SuppressWarnings("unchecked")
	@ModelAttribute("producer")
	public List<Producer> getProducer() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM Producer").list();
	}

	@SuppressWarnings("unchecked")
	@ModelAttribute("saleOffProducts")
	public List<Product> get9SaleOffProducts() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM Product p WHERE p.status = 1 AND p.discount > 0 ORDER BY p.discount DESC";
		Query query = session.createQuery(hql);
		query.setMaxResults(9);
		return query.list();
	}
}
