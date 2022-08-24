package com.shopforhome.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shopforhome.model.Users;
 
public interface UsersRepository extends JpaRepository<Users, Integer> {
 
}