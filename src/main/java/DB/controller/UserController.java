package DB.controller;

import DB.model.User;
import DB.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value="/user")
public class UserController {
	
	@Autowired
	private UserService userService;

	@RequestMapping(value="/list")
	public ModelAndView listUsers() {
		ModelAndView modelAndView = new ModelAndView("list");
		List<User> users = userService.getUsers();
		modelAndView.addObject("users", users);
		return modelAndView;
	}

    @RequestMapping(value="/search")
    public ModelAndView searchUsers(@RequestParam(required= false, defaultValue="") String searchName) {
        ModelAndView modelAndView = new ModelAndView("search");
        List<User> users = userService.searchUsers(searchName) ;
        modelAndView.addObject("users", users);
        return modelAndView;
    }

	@RequestMapping(value="/add", method=RequestMethod.GET)
	public ModelAndView addUserPage() {
		ModelAndView modelAndView = new ModelAndView("add");
		modelAndView.addObject("user", new User());
		return modelAndView;
	}

	@RequestMapping(value="/add", method=RequestMethod.POST)
	public ModelAndView addUser(@ModelAttribute User user) {
		ModelAndView modelAndView = new ModelAndView("home");
		userService.addUser(user);
		String message = "User was successfully added.";
		modelAndView.addObject("message", message);
		return modelAndView;
	}

	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public ModelAndView deleteUser(@PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("home");
		userService.deleteUser(id);
		String message = "User was successfully deleted.";
		modelAndView.addObject("message", message);
		return modelAndView;
	}

	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public ModelAndView editUserPage(@PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("edit");
		User user = userService.getUser(id);
		modelAndView.addObject("user",user);
		return modelAndView;
	}

	@RequestMapping(value="/edit/{id}", method=RequestMethod.POST)
	public ModelAndView editUser(@ModelAttribute User user, @PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("home");
		userService.updateUser(user);
		String message = "User was successfully edited.";
		modelAndView.addObject("message", message);
		return modelAndView;
	}

}
