package fr.tina.com.control;

import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import fr.tina.com.model.Customer;
import fr.tina.com.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	private final static Logger logger = Logger.getLogger(CustomerController.class.getName());
	private CustomerService customerService = null;
	
	@Autowired
	public CustomerController(CustomerService customerService) {
		super();
		this.customerService = customerService;
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String getCustomers(Model model) {
		logger.info("getAllCustomers");
		
		model.addAttribute("customers", this.customerService.all());

		return "customer/all";
	}
	
	@RequestMapping(value="/all", method = RequestMethod.GET)
	public String getAllCustomers(Model model) {
		return getCustomers(model);
	}
	
	@RequestMapping(value="/create", method = RequestMethod.GET)
	public String createCustomer(Model model) {
		logger.info("createCustomer");
		
		model.addAttribute("form", new Customer());
		return "customer/create";
	}
	
	@RequestMapping(value="/create", method = RequestMethod.POST)
	public String addCustomer(Model model, @RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName, @RequestParam("email") String email, @RequestParam("phoneNumber") String phoneNumber) {
		logger.info("addCustomer");
		
		Customer newCustomer = new Customer(firstName, lastName, phoneNumber, email);
		
		customerService.add(newCustomer);

		model.addAttribute("success", "Client ajouté !");
		
		return "redirect:/" + getCustomers(model);
	}
	
	@RequestMapping(value="/{id}", method = RequestMethod.GET)
	public String getCustomer(@PathVariable("id") int id, Model model) {
		logger.info("getCustomer");
		
		try {
			model.addAttribute("customer", this.customerService.get(id));
			model.addAttribute("id", id);
			
			return "customer/get";
		} catch (IndexOutOfBoundsException e) {
			return "customer/404";
		}
	}
	
	@RequestMapping(value="/{id}/delete", method = RequestMethod.GET)
	public String deleteCustomer(@PathVariable("id") int id, Model model) {
		logger.info("getCustomer");
		try {
			this.customerService.remove(this.customerService.get(id));
			model.addAttribute("success", "Client supprimé !");
			return "redirect:/" + getCustomers(model);
		} catch (IndexOutOfBoundsException e) {
			return "customer/404";
		}
	}
}
