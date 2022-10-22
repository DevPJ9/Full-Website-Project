package com.greycampus.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.greycampus.entity.CustomerEntity;
import com.greycampus.services.CustomerService;


@Controller
@RequestMapping(path = "/search")
public class SearchController {

	@Autowired
	private CustomerService customerService;

	@RequestMapping(method = RequestMethod.GET)
	public String searchForm() {
		return "searchdataform";	
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String searchData(CustomerEntity customerEntity,Model model) {
		
		if(customerEntity.getName().isBlank()||customerEntity.getName().isEmpty()) {
		List<CustomerEntity> list = customerService.display(customerEntity);
		model.addAttribute("list",list);
		}
		else {
			List<CustomerEntity> list = customerService.displayByName(customerEntity);
			model.addAttribute("list",list);
		}	
		return "searchresult";	
	}
}
