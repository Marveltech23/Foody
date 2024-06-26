import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/components/my_quantity_selector..dart';
import 'package:provider/provider.dart';

import 'package:foody/models/cart_item.dart';
import 'package:foody/models/restaurant.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
        builder: (context, restaurant, child) => Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(8.r)),
              margin: EdgeInsets.symmetric(horizontal: 25.r, vertical: 10.r),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.r),
                          child: Image.asset(
                            cartItem.food.imagePath,
                            height: 100.r,
                            width: 100.r,
                          ),
                        ),
                        15.horizontalSpace,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(cartItem.food.name),
                            Text("\$" + cartItem.food.price.toString()),
                            7.verticalSpace,
                            QuantitySelector(
                              quantity: cartItem.quantity,
                              food: cartItem.food,
                              onIncrement: () {
                                restaurant.removeFromCart(cartItem);
                              },
                              onDecrement: () {
                                restaurant.addToCart(
                                    cartItem.food, cartItem.selectedAddons);
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: cartItem.selectedAddons.isEmpty ? 0 : 60,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(
                          left: 10.r, bottom: 10.r, right: 10.r),
                      children: cartItem.selectedAddons
                          .map((addon) => Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: FilterChip(
                                  label: Row(
                                    children: [
                                      Text(addon.name),
                                      Text("\$" + addon.price.toString())
                                    ],
                                  ),
                                  shape: StadiumBorder(
                                      side: BorderSide(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary)),
                                  onSelected: (valu) {},
                                  backgroundColor:
                                      Theme.of(context).colorScheme.secondary,
                                  labelStyle: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .inversePrimary,
                                      fontSize: 12.r),
                                ),
                              ))
                          .toList(),
                    ),
                  )
                ],
              ),
            ));
  }
}
