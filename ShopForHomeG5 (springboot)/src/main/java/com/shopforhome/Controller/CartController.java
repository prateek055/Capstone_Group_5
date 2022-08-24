package com.shopforhome.Controller;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.http.*;
 
import org.springframework.web.bind.annotation.*;

import com.shopforhome.Services.CartService;
import com.shopforhome.model.Cart;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
public class CartController {
 
    @Autowired
    private CartService service;
     
    // RESTful API methods for Retrieval operations
    
    @GetMapping("/cart")
    public List<Cart> list() {
        return service.listAll();
    }
    @GetMapping("/cart/{id}")
    public ResponseEntity<Cart> get(@PathVariable Integer id) {
        try {
        	Cart cart = service.get(id);
            return new ResponseEntity<Cart>(cart, HttpStatus.OK);
        } catch (NoSuchElementException e) {
            return new ResponseEntity<Cart>(HttpStatus.NOT_FOUND);
        }      
    }
    // RESTful API method for Create operation
   
    @PostMapping("/cart")
    public void add(@RequestBody Cart cart) {
        service.save(cart);
    }
    @CrossOrigin(origins = "http://localhost:4200") 
    @PutMapping("/cart/{id}")
	public void update(@RequestBody Cart cart) {
    	System.out.println(cart);
		 service.update(cart);
		 
	}
    
    // RESTful API method for Delete operation
    @CrossOrigin(origins = "http://localhost:4200")
    @DeleteMapping("/cart/{id}")
    public void delete(@PathVariable Integer id) {
        service.delete(id);
    }
    
   
}