package com.greycampus.services;

import java.util.List;

import com.greycampus.entity.City;

public interface CityService {

	public List<City> findByState(int id);

}