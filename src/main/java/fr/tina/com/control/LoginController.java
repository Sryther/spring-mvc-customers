package fr.tina.com.control;

import java.util.logging.Logger;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.tina.com.model.User;

@Controller
public class LoginController {
	private final static Logger logger = Logger.getLogger(LoginController.class.getName());

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String getLogin(Model model) {
		logger.info("getLogin");
		model.addAttribute("form", new User());
		model.addAttribute("statusOK", false);
		model.addAttribute("statusMessage", "");
		return "login";
	}
}
