class Product {
  int id;
  String name;
  int quantity;
  double price;

  Product(this.id, this.name, this.quantity, this.price);
}

class InventoryManager {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
    print('Product "${product.name}" added successfully.');
  }

  void removeProduct(int productId) {
    Product product = products.firstWhere((p) => p.id == productId, orElse: () => null);
    if (product != null) {
      products.remove(product);
      print('Product "${product.name}" removed successfully.');
    } else {
      print('Product with ID $productId not found.');
    }
  }

  // Other methods for inventory management can be added here
}

void main() {
  InventoryManager inventoryManager = InventoryManager();

  Product product1 = Product(1, 'Keyboard', 5, 19.99);
  Product product2 = Product(2, 'Mouse', 10, 9.99);

  inventoryManager.addProduct(product1);
  inventoryManager.addProduct(product2);

  inventoryManager.removeProduct(1);
  inventoryManager.removeProduct(3); // Invalid product ID
}
