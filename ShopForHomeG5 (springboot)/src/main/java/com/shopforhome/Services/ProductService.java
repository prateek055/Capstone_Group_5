package com.shopforhome.Services;
import java.io.IOException;
import java.util.List;

import javax.transaction.Transactional;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;


import com.shopforhome.Repository.ProductRepository;
import com.shopforhome.helper.Helper;
import com.shopforhome.model.Product;
 
@Service
@Transactional
public class ProductService {
 
    @Autowired
    private ProductRepository repo1;
    
    public void save(MultipartFile file) {

        try {
            List<Product> products = Helper.convertExcelToListOfProduct(file.getInputStream());
            this.repo1.saveAll(products);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
     
    public List<Product> listAll() {
        return repo1.findAll();
    }
     
    public void save(Product product) {
        repo1.save(product);
    }
     
    public Product get(Integer id) {
        return repo1.findById(id).get();
    }
    
    public void update(Product product) {
       repo1.save(product);
    }
     
    public void delete(Integer id) {
        repo1.deleteById(id);
    }
    
}