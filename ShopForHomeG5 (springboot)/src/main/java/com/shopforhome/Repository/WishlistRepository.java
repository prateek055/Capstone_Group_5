package com.shopforhome.Repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.shopforhome.model.Wishlist;

public interface WishlistRepository extends JpaRepository<Wishlist, Integer> {
	 
	}
