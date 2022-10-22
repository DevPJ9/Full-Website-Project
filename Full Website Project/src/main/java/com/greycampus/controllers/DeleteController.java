package com.greycampus.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.greycampus.entity.CustomerEntity;
import com.greycampus.services.CustomerService;

@Controller
@RequestMapping(path = "/delete")
public class DeleteController {

	@Autowired
	private CustomerService customerService;

	@RequestMapping(method = RequestMethod.GET)
	public String searchForm() {
		return "deleteform";	
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String searchData(CustomerEntity customerEntity,Model model) {
	customerService.delete(customerEntity);

		return "deleteresult";	
	}
}
