package com.Main.handler;

import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.Main.entity.Employee;
import com.Main.repository.UserRepository;

@Controller
public class handler {
	@Autowired
	private UserRepository uRepo;

	@RequestMapping("/")
	public String home() {
		return "Home";
	}

	@RequestMapping("/register")
	public String regist() {
		return "EmpRegisterFRM";
	}

	@PostMapping("/saveData")
	public String save(@ModelAttribute Employee emp, Model m) {
		uRepo.save(emp);
		m.addAttribute("user", emp);
		return "RegisterMSG";
	}

	// Login
	@RequestMapping("/login")
	public String log_in() {
		return "LoginFRM";
	}

	@RequestMapping("/loguser")
	public String log_in(@RequestParam String emp_email, @RequestParam String emp_password, Model model,
			HttpSession userLog) {
		List<Employee> list = uRepo.findAll();
		Iterator<Employee> itr = list.iterator();
		int status = 0;
		while (itr.hasNext()) {
			Employee e = itr.next();
			if (e.getEmp_email().equals(emp_email) && e.getEmp_password().equals(emp_password)) {
				status++;
				userLog.setAttribute("loggedin", e);
			}
		}
		if (status > 0) {
			return "redirect:/UserHome";
		} else {
			return "LoginFRM";
		}
	}

	@GetMapping("/UserHome")
	public String user_home(HttpSession userLog, Model m) {
		Employee logged = (Employee) userLog.getAttribute("loggedin");
		if (logged != null) {
			m.addAttribute("user", logged);
			return "UserHome";
		} else {

			return "redirect:/login";
		}
	}

	
	// All Employee
	
	@RequestMapping("/emplist")
	public String empList(HttpSession userLog,Model m) {
		Employee logged = (Employee) userLog.getAttribute("loggedin");
		if (logged != null) {
			List<Employee> list=uRepo.findAll();
			m.addAttribute("employees", list);
			return "EmployeeList";
		} else {

			return "redirect:/login";
		}
		
	}
	
	
	//Update
	
	@RequestMapping("/update")
	public String update(HttpSession userLog,@RequestParam("id") Integer emp_id,Model m) {
		Employee logged = (Employee) userLog.getAttribute("loggedin");
		if (logged != null) {
			Optional<Employee> findById = uRepo.findById(emp_id);
			Employee emp = findById.get();
			m.addAttribute("employee", emp);
			return "EmpUpdate";
		} else {

			return "redirect:/login";
		}
	}
	
	@RequestMapping(path = "/empUpdate",method = RequestMethod.POST)
	public String emp_update(HttpSession userLog, @ModelAttribute Employee emp,Model m) {
		Employee logged = (Employee) userLog.getAttribute("loggedin");
		if (logged != null) {
			uRepo.save(emp);
			m.addAttribute("emp_update", "Data updated");
			List<Employee> list=uRepo.findAll();
			m.addAttribute("employees", list);
			return "EmployeeList";
		} else {

			return "redirect:/login";
		}
	}
	
	//Delete
	@RequestMapping("/delete")
	public String emp_dlt(HttpSession userLog,@RequestParam("id") Integer emp_id,Model m) {
		Employee logged = (Employee) userLog.getAttribute("loggedin");
		if (logged != null) {
			System.out.println(emp_id);
			uRepo.deleteById(emp_id);
			List<Employee> list=uRepo.findAll();
			m.addAttribute("employees", list);
			m.addAttribute("dlt_msg", "Deleted Successfully...");
			return "EmployeeList";
		} else {

			return "redirect:/login";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession userLog) {
		userLog.invalidate();
		return "redirect:/login"; // Redirect to the login page after logout
	}

	@RequestMapping("/about")
	public String about() {
		return "About";
	}
}
