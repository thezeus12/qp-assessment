package com.example.grocerybooking.Controller;

import com.example.grocerybooking.Model.Item;
import com.example.grocerybooking.Service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/admin")
public class AdminController {

    @Autowired
    private ItemService itemService;

    @PostMapping("/add")
    public ResponseEntity<String> addItem(@RequestBody Item item) {
        // Implementation to add a new grocery item
        itemService.addItem(item);
        return ResponseEntity.ok("Grocery item added successfully");
    }

    @GetMapping("/view")
    public ResponseEntity<List<Item>> viewItems() {
        // Implementation to view existing grocery items
        List<Item> items = itemService.getAllItems();
        return ResponseEntity.ok(items);

    }

    @PutMapping("/update/{itemId}")
    public ResponseEntity<String> updateItem(@PathVariable Long itemId, @RequestBody Item updatedItem) {
        // Implementation to update details of an existing grocery item
        itemService.updateItem(itemId, updatedItem);
        return ResponseEntity.ok("Grocery item updated successfully");
    }

    @DeleteMapping("/remove/{itemId}")
    public ResponseEntity<String> removeItem(@PathVariable Long itemId) {
        // Implementation to remove a grocery item
        itemService.removeItem(itemId);
        return ResponseEntity.ok("Grocery item removed successfully");
    }

    @PutMapping("/manage-inventory/{itemId}")
    public ResponseEntity<String> manageInventory(@PathVariable Long itemId, @RequestParam int quantity, @RequestParam boolean add) {
        // Implementation to manage inventory levels of a grocery item
        itemService.manageInventory(itemId, quantity, add);
        return ResponseEntity.ok("Inventory managed successfully");
    }
}

