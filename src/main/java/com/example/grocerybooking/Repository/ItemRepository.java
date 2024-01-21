package com.example.grocerybooking.Repository;

import com.example.grocerybooking.Model.Item;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ItemRepository extends JpaRepository<Item, Long> {
    List<Item> findByQuantityGreaterThan(int quantity);
}

