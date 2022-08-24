package com.shopforhome.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shopforhome.model.Cart;

public interface CartRepository extends JpaRepository<Cart, Integer> {
	 
	}

