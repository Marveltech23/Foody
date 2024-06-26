import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:foody/config/imagepath.dart';
import 'package:foody/models/cart_item.dart';
import 'package:foody/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
// burger

    Food(
        name: "Classic Cheeseburger ",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and hint of the oninon and pickle  ",
        imagePath: DefaultImages.burger1,
        price: 0.99,
        category: FoodCategory.burger,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
    Food(
        name: "Ultimate Bacon Cheeseburger",
        description:
            "A hearty beef patty topped with crispy bacon, melted sharp cheddar cheese, fresh lettuce, ripe tomatoes, and a touch of smoky BBQ sauce, served on a toasted bun",
        imagePath: DefaultImages.burger2,
        price: 0.99,
        category: FoodCategory.burger,
        availableAddons: [
          Addon(name: "Extra cheese", price: 1.20),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
    Food(
        name: "Double Decker Cheeseburger",
        description:
            "Two succulent beef patties stacked with double layers of American cheese, crisp lettuce, juicy tomatoes, and a special house sauce on a soft sesame seed bun.",
        imagePath: DefaultImages.burger3,
        price: 0.99,
        category: FoodCategory.burger,
        availableAddons: [
          Addon(name: "Extra cheese", price: 1.49),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
    Food(
        name: "Pepper Jack Cheeseburger",
        description:
            "A beef patty topped with pepper jack cheese, jalapeños, lettuce, tomato, and a spicy mayo sauce on a toasted jalapeño bun",
        imagePath: DefaultImages.burger4,
        price: 0.99,
        category: FoodCategory.burger,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
    Food(
        name: "Classic Cheeseburger ",
        description:
            " A juicy beef patty with melted cheddar, lettuce, tomato, and hint of the oninon and pickle  ",
        imagePath: DefaultImages.burger4,
        price: 0.99,
        category: FoodCategory.burger,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
// salads

    Food(
        name: "Classic Cheeseburger ",
        description:
            " A juicy beef patty with melted cheddar, lettuce, tomato, and hint of the oninon and pickle  ",
        imagePath: DefaultImages.burger1,
        price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
    Food(
        name: "Classic Cheeseburger ",
        description:
            " A juicy beef patty with melted cheddar, lettuce, tomato, and hint of the oninon and pickle  ",
        imagePath: DefaultImages.burger1,
        price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
    Food(
        name: "Classic Cheeseburger ",
        description:
            " A juicy beef patty with melted cheddar, lettuce, tomato, and hint of the oninon and pickle  ",
        imagePath: DefaultImages.burger1,
        price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
    Food(
        name: "Classic Cheeseburger ",
        description:
            " A juicy beef patty with melted cheddar, lettuce, tomato, and hint of the oninon and pickle  ",
        imagePath: DefaultImages.burger1,
        price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
    Food(
        name: "Classic Cheeseburger ",
        description:
            " A juicy beef patty with melted cheddar, lettuce, tomato, and hint of the oninon and pickle  ",
        imagePath: DefaultImages.burger1,
        price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
// sides
    Food(
        name: "Classic Cheeseburger ",
        description:
            " A juicy beef patty with melted cheddar, lettuce, tomato, and hint of the oninon and pickle  ",
        imagePath: DefaultImages.burger1,
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
    Food(
        name: "Classic Cheeseburger ",
        description:
            " A juicy beef patty with melted cheddar, lettuce, tomato, and hint of the oninon and pickle  ",
        imagePath: DefaultImages.burger1,
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
    Food(
        name: "Classic Cheeseburger ",
        description:
            " A juicy beef patty with melted cheddar, lettuce, tomato, and hint of the oninon and pickle  ",
        imagePath: DefaultImages.burger1,
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
    Food(
        name: "Classic Cheeseburger ",
        description:
            " A juicy beef patty with melted cheddar, lettuce, tomato, and hint of the oninon and pickle  ",
        imagePath: DefaultImages.burger1,
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
    Food(
        name: "Classic Cheeseburger ",
        description:
            " A juicy beef patty with melted cheddar, lettuce, tomato, and hint of the oninon and pickle  ",
        imagePath: DefaultImages.burger1,
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
// desserts
    Food(
        name: "Classic Cheeseburger ",
        description:
            " A juicy beef patty with melted cheddar, lettuce, tomato, and hint of the oninon and pickle  ",
        imagePath: DefaultImages.desserts1,
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
    Food(
        name: "Classic Cheeseburger ",
        description:
            " A juicy beef patty with melted cheddar, lettuce, tomato, and hint of the oninon and pickle  ",
        imagePath: DefaultImages.desserts2,
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
    Food(
        name: "Classic Cheeseburger ",
        description:
            " A juicy beef patty with melted cheddar, lettuce, tomato, and hint of the oninon and pickle  ",
        imagePath: DefaultImages.desserts3,
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
    Food(
        name: "Classic Cheeseburger ",
        description:
            " A juicy beef patty with melted cheddar, lettuce, tomato, and hint of the oninon and pickle  ",
        imagePath: DefaultImages.desserts4,
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
    Food(
        name: "Classic Cheeseburger ",
        description:
            " A juicy beef patty with melted cheddar, lettuce, tomato, and hint of the oninon and pickle  ",
        imagePath: DefaultImages.desserts1,
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
// drinks

    Food(
        name: "Classic Cheeseburger ",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and hint of the oninon and pickle  ",
        imagePath: DefaultImages.burger1,
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),

    Food(
        name: "Classic Cheeseburger ",
        description:
            " A juicy beef patty with melted cheddar, lettuce, tomato, and hint of the oninon and pickle  ",
        imagePath: DefaultImages.burger2,
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
    Food(
        name: "Classic Cheeseburger ",
        description:
            " A juicy beef patty with melted cheddar, lettuce, tomato, and hint of the oninon and pickle  ",
        imagePath: DefaultImages.burger3,
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
    Food(
        name: "Classic Cheeseburger ",
        description:
            " A juicy beef patty with melted cheddar, lettuce, tomato, and hint of the oninon and pickle  ",
        imagePath: DefaultImages.burger1,
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
    Food(
        name: "Classic Cheeseburger ",
        description:
            " A juicy beef patty with melted cheddar, lettuce, tomato, and hint of the oninon and pickle  ",
        imagePath: DefaultImages.burger1,
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: "Avacado", price: 0.99)
        ]),
  ];
  final List<CartItem> _cart = [];

  String _deliveryAddress = '99 Hollywood Bly';

  // Getters

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  //user cart

  // final List<CartItem> _cart = [];

//operation

  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if food items are the same

      bool isSamefood = item.food == food;

      // check if the list of selected addons are the same

      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSamefood && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }

    notifyListeners();
  }

// remove  from cart

  void removeFromCart(CartItem cartItem) {
    int cartindex = _cart.indexOf(cartItem);

    if (cartindex != -1) {
      if (_cart[cartindex].quantity > 1) {
        _cart[cartindex].quantity--;
      } else {
        _cart.removeAt(cartindex);
      }
    }
    notifyListeners();
  }

// get total price

  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

// get total number of items in cart

  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

//clear cart

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

// generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here your receipt. ");
    receipt.writeln();

    // formate the date to include up to seconds
    String formattedDate =
        DateFormat('yyyy-MM-dd-HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln('------------');

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name}  - ${_formatPrice(cartItem.food.price)}");

      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("  Ad-ons: ${_formatAddons(cartItem.selectedAddons)} ");
      }
      receipt.writeln();
    }

    receipt.writeln('-----------');
    receipt.writeln();
    receipt.writeln('Total items: ${getTotalItemCount()}');
    receipt.writeln('Total Price: ${_formatPrice(getTotalPrice())}');
    receipt.writeln('Delivering to: $deliveryAddress');

    return receipt.toString();
  }

//formate double value into money

  String _formatPrice(double price) {
    return "\$ ${price.toStringAsFixed(2)}";
  }

//format list of addons  into a string sumaary

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join();
  }
}
