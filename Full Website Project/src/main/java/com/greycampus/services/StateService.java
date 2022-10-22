package com.greycampus.services;

import java.util.List;

import com.greycampus.entity.State;

public interface StateService {

	public List<State> findByCountry(int id);

}