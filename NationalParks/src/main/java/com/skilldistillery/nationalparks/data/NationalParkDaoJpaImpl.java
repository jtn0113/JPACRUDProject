package com.skilldistillery.nationalparks.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.nationalparks.entities.NationalPark;

@Service
@Transactional
public class NationalParkDaoJpaImpl implements NationalParkDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public NationalPark findById(int parkId) {
		return em.find(NationalPark.class, parkId);
	}

	@Override
	public List<NationalPark> findAll() {
		String jpql = "SELECT p FROM NationalPark p";
		return em.createQuery(jpql, NationalPark.class).getResultList();
	}

	@Override
	public NationalPark create(NationalPark park) {
		em.persist(park);
		return park;
	}

	@Override
	public NationalPark update(int parkId, NationalPark park) {
		NationalPark managedPark = em.find(NationalPark.class, parkId);
		managedPark.setName(park.getName());
		managedPark.setState(park.getState());
		managedPark.setAcres(park.getAcres());
		managedPark.setLatitude(park.getLatitude());
		managedPark.setLongitude(park.getLongitude());
		managedPark.setImage(park.getImage());
		managedPark.setDescription(park.getDescription());
		
		return managedPark;
	}

	@Override
	public boolean delete(int parkId) {
		boolean removed = false;
		NationalPark park = em.find(NationalPark.class, parkId);
		em.remove(park);
		
		if(park == null) {
			removed = true;
		}
		return removed;
	}

}
