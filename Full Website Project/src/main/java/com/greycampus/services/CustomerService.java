package com.greycampus.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greycampus.dao.CustomerDAO;
import com.greycampus.entity.CustomerEntity;

@Service
public class CustomerService {

	@Autowired
	private CustomerDAO customerDAO;
		
		public void save(CustomerEntity customerEntity ) {
			customerDAO.saveData(customerEntity);	
		}
	
		public void delete(CustomerEntity customerEntity ) {
			customerDAO.deleteData(customerEntity);	
		}
		public void update(CustomerEntity customerEntity ) {
			customerDAO.updateData(customerEntity);	
		}
		public List<CustomerEntity> display(CustomerEntity customerEntity){	
			return customerDAO.searchData(customerEntity);
		}
		public List<CustomerEntity> displayByName(CustomerEntity customerEntity){	
			return customerDAO.searchDataByName(customerEntity);
		}
		
}
