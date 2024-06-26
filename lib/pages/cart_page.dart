import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/components/my_buttom.dart';
import 'package:foody/components/my_cart_tile.dart';
import 'package:foody/models/restaurant.dart';
import 'package:foody/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      final userCart = restaurant.cart;

      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Cart"),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: const Text(
                                'Are you sure you want to clear the cart ?'),
                            actions: [
                              TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('Cancel')),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    restaurant.clearCart();
                                  },
                                  child: const Text('yes'))
                            ],
                          ));
                },
                icon: const Icon(Icons.delete))
          ],
        ),
        body: Column(
          children: [
            userCart.isEmpty
                ? const Expanded(child: Center(child: Text('Cart is empty')))
                : Expanded(
                    child: ListView.builder(
                        itemCount: userCart.length,
                        itemBuilder: (context, index) {
                          final cartaItem = userCart[index];

                          return MyCartTile(
                            cartItem: cartaItem,
                          );
                        })),
            MyButton(
              text: "Go to checkout",
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PaymentPage())),
            ),
            25.verticalSpace,
          ],
        ),
      );
    });
  }
}
