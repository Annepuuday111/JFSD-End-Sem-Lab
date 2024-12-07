package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.service.CustomerService;

@Controller
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @GetMapping("/")
    public String showAddCustomerForm(Model model) {
        model.addAttribute("customer", new Customer());
        return "addcustomer";
    }

    @PostMapping("/insertcustomer")
    public ModelAndView addCustomer(@ModelAttribute("customer") Customer customer) {
        ModelAndView mv = new ModelAndView();
        String msg = customerService.addCustomer(customer);
        mv.addObject("message", msg);
        mv.setViewName("customersuccess");
        return mv;
    }

//    @GetMapping("/viewcustomers")
//    public String viewCustomers(Model model) {
//        List<Customer> customers = customerService.getAllCustomers();
//        model.addAttribute("customers", customers);
//        return "viewcustomers";
    }

