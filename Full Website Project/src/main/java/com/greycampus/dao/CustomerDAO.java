package com.greycampus.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.greycampus.entity.CustomerEntity;
import com.greycampus.repo.CityRepository;
import com.greycampus.repo.CountryRepository;
import com.greycampus.repo.CustomerCrudRepo;
import com.greycampus.repo.StateRepository;

@Repository
public class CustomerDAO {

	@Autowired
	private CustomerCrudRepo crudRepo;
	
	@Autowired
	 private CountryRepository countryRepository; 
	
	@Autowired
	private StateRepository stateRepository;
	
	@Autowired
	private CityRepository cityRepository;

	@Transactional
	public void saveData(CustomerEntity customerEntity) {
		String country = countryRepository.findCountrybyid(Long.valueOf(customerEntity.getCountry()));
		customerEntity.setCountry(country);
		String state = stateRepository.findStatebyid(Long.valueOf(customerEntity.getState()));
		customerEntity.setState(state);
		String city = cityRepository.findCitybyid(Long.valueOf(customerEntity.getCity()));
		customerEntity.setCity(city);
		crudRepo.save(customerEntity);
	}

	@Transactional
	public void updateData(CustomerEntity customerEntity) {
		String country = countryRepository.findCountrybyid(Long.valueOf(customerEntity.getCountry()));
		customerEntity.setCountry(country);
		String state = stateRepository.findStatebyid(Long.valueOf(customerEntity.getState()));
		customerEntity.setState(state);
		String city = cityRepository.findCitybyid(Long.valueOf(customerEntity.getCity()));
		customerEntity.setCity(city);
		crudRepo.updateByPhone(customerEntity.getName(),customerEntity.getType(), customerEntity.getCountry(), customerEntity.getState(), customerEntity.getCity(), customerEntity.getStreet(), customerEntity.getPincode(),customerEntity.getUpdated_by(),customerEntity.getUpdated_on(),customerEntity.getPhone());
	}
	
	@Transactional
	public void deleteData(CustomerEntity customerEntity) {
		crudRepo.deletebyphone(customerEntity.getPhone());

	}
		
	@Transactional
	public List<CustomerEntity> searchData(CustomerEntity customerEntity) {
		List<CustomerEntity> alldata = (List<CustomerEntity>) crudRepo.findAll();
		return alldata;
	}
	
	@Transactional
	public List<CustomerEntity> searchDataByName(CustomerEntity employee) {
		List<CustomerEntity> findById = (List<CustomerEntity>)crudRepo.findByName(employee.getName());
		return findById;
	}


}
