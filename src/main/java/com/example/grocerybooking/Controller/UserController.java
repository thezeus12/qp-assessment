package com.example.grocerybooking.Controller;

import com.example.grocerybooking.Model.Item;
import com.example.grocerybooking.Service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/user")
public class UserController {

    @Autowired
    private ItemService itemService;

    @GetMapping("/view")
    public ResponseEntity<List<Item>> viewAvailableItems() {
        // Implementation to view available grocery items
        List<Item> availableItems = itemService.getAvailableItems();
        return ResponseEntity.ok(availableItems);
    }

    @PostMapping("/book")
    public ResponseEntity<String> bookItems(@RequestBody Map<Long,Integer> items) {
        // Implementation to book multiple grocery items in a single order
        itemService.bookItems(items);
        return ResponseEntity.ok("Grocery items booked successfully");
    }
}