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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public NationalPark update(int parkId, NationalPark park) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(int parkId) {
		// TODO Auto-generated method stub
		return false;
	}

}
