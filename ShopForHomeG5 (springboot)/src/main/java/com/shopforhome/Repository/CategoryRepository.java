package com.shopforhome.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shopforhome.model.Category;

public interface CategoryRepository extends JpaRepository<Category, Integer> {
	 
	}

