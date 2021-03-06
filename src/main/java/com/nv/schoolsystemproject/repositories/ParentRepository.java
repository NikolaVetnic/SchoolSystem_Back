package com.nv.schoolsystemproject.repositories;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.nv.schoolsystemproject.entities.ParentEntity;

public interface ParentRepository extends CrudRepository<ParentEntity, Integer> {
	
	Optional<ParentEntity> findByEmail(String email);
}
