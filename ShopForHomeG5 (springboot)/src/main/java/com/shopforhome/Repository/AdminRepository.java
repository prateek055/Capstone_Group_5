package com.shopforhome.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shopforhome.model.Admin;

public interface AdminRepository extends JpaRepository<Admin, Integer> {
	 
	}

