package com.greycampus.services;

import com.greycampus.entity.Country;

public interface CountryService {

	public Iterable<Country> findAll();

	public Country findCountry(long id);

}