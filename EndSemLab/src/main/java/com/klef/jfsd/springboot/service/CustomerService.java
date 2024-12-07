package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.repository.CustomerRepository;

@Service
public class CustomerService {

    @Autowired
    private CustomerRepository customerRepository;

    public String addCustomer(Customer customer) {
        try {
        	
            customerRepository.save(customer);
            return "Customer added successfully!";
        } catch (Exception e) {
            
            return "Error adding customer: " + e.getMessage();
        }
    }
}
