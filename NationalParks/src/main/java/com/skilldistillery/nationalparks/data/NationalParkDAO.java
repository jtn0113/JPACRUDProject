package com.skilldistillery.nationalparks.data;

import java.util.List;

import com.skilldistillery.nationalparks.entities.NationalPark;

public interface NationalParkDAO {
	
	NationalPark findById(int parkId);
	List<NationalPark> findAll();
	NationalPark create(NationalPark park);
	NationalPark update(int parkId, NationalPark park);
	boolean delete(int parkId);
}
