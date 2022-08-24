package com.shopforhome.Repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.shopforhome.model.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {
	 
	}
