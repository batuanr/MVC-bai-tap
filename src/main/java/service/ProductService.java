package service;

import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductService implements IProductService{
    private static Map<Integer, Product> productList;

    static {
        productList = new HashMap<>();
        productList.put(1, new Product(1, "iphone 8", "64g black", "apple", 3000));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productList.values());
    }

    @Override
    public void save(Product product) {
        productList.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return productList.get(id);
    }

    @Override
    public void update(int id, Product product) {
        productList.put(id, product);
    }
    public List<Product> findByName(String name){
        List<Product> products = new ArrayList<>(productList.values());
        List<Product> newList = new ArrayList<>();
        for (Product product: products){
            if (product.getName().equals(name)){
                newList.add(product);
            }
        }
        return newList;
    }

    @Override
    public void remove(int id) {
        productList.remove(id);
    }
}
