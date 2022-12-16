package com.skilldistillery.nationalparks.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class NationalParkTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private NationalPark park;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPANationalParks");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		park = em.find(NationalPark.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		park = null;
	}

	@Test
	void test_NationalPark_entity_mapping() {
		assertNotNull(park);
		assertEquals("Big National Park", park.getName());
	}

}
