package fr.tina.com.service;

import java.util.ArrayList;
import java.util.List;

import fr.tina.com.model.Customer;

public class CustomerService {
	private List<Customer> customers = null;
	
	public CustomerService() {
		this.customers = new ArrayList<Customer>();
	}
	
	public boolean add(Customer customer) {
		return this.customers.add(customer);
	}

	public boolean remove(Customer customer) {
		return this.customers.remove(customer);
	}
	
	public Customer get(int index) {
		return this.customers.get(index);
	}
	
	public List<Customer> all() {
		return this.customers;
	}
}
