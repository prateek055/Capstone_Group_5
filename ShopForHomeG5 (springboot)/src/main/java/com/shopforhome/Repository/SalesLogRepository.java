package com.shopforhome.Repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.shopforhome.model.SalesLog;

public interface SalesLogRepository extends JpaRepository<SalesLog, Integer> {
	 
	}
