package com.greycampus.repo;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.greycampus.entity.Country;

@Repository("countryRepository")
public interface CountryRepository extends CrudRepository<Country, Long> {

	@Query(value="select country.name from country where id= :id",nativeQuery = true)
	public String findCountrybyid(Long id);
	
}