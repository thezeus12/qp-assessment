package com.example.grocerybooking.Service;

import com.example.grocerybooking.Model.Item;
import com.example.grocerybooking.Repository.ItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class ItemService {

    @Autowired
    private ItemRepository itemRepository;

    public void addItem(Item groceryItem) {
        // Implementation to add a new grocery item
        itemRepository.save(groceryItem);
    }

    public List<Item> getAllItems() {
        // Implementation to get all grocery items
        return itemRepository.findAll();
    }

    public void updateItem(Long itemId, Item updatedItem) {
        // Implementation to update details of an existing grocery item
        Item existingItem = itemRepository.findById(itemId).orElse(null);
        if (existingItem != null) {
            // Update details of the existing item
            existingItem.setName(updatedItem.getName());
            existingItem.setPrice(updatedItem.getPrice());
            itemRepository.save(existingItem);
        }
    }

    public void removeItem(Long itemId) {
        // Implementation to remove a grocery item
        itemRepository.deleteById(itemId);
    }

    public void manageInventory(Long itemId, int quantity, boolean add) {
        // Implementation to manage inventory levels of a grocery item
        Item existingItem = itemRepository.findById(itemId).orElse(null);
        int updatedQuantity=0;
        if (existingItem != null) {
            // Update inventory level
            if(add)
                existingItem.setQuantity(existingItem.getQuantity() + quantity);
            else{
                updatedQuantity = existingItem.getQuantity() - quantity;
                if (updatedQuantity < 0)
                    updatedQuantity = 0;
                existingItem.setQuantity(updatedQuantity);
            }

            itemRepository.save(existingItem);
        }
    }

    public List<Item> getAvailableItems() {
        // Implementation to get available grocery items
        return itemRepository.findByQuantityGreaterThan(0);
    }

    public void bookItems(Map<Long,Integer> items) {
        // Implementation to book multiple grocery items in a single order
        for (Map.Entry<Long,Integer> item : items.entrySet()) {

            Item itemFound = itemRepository.findById(item.getKey()).orElse(null);
            if (itemFound != null && itemFound.getQuantity() > 0) {
                itemFound.setQuantity(itemFound.getQuantity() - item.getValue());
                itemRepository.save(itemFound);
            }
        }
    }
}

