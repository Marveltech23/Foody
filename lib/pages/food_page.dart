import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/components/my_buttom.dart';
import 'package:foody/models/food.dart';
import 'package:foody/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({super.key, required this.food}) {
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  void addTocart(Food food, Map<Addon, bool> selectedAddons) {
    Navigator.pop(context);
    List<Addon> CurrentlySlectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        CurrentlySlectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, CurrentlySlectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(widget.food.imagePath),
              //food name
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 15.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.food.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.r),
                    ),
                    10.verticalSpace,
                    Text(
                      "\$" + widget.food.price.toString(),
                      style: TextStyle(
                        fontSize: 14.r,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    8.verticalSpace,
                    //food discription
                    Text(
                      widget.food.description,
                    ),
                    6.verticalSpace,
                    Divider(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    Text(
                      "Add-ons",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 14.r,
                          fontWeight: FontWeight.bold),
                    ),

                    10.verticalSpace,
                    // addons
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.secondary,
                          )),
                      child: ListView.builder(
                          itemCount: widget.food.availableAddons.length,
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            Addon addon = widget.food.availableAddons[index];
                            return CheckboxListTile(
                                title: Text(addon.name),
                                subtitle: Text(
                                  "\$" + addon.price.toString(),
                                  style: TextStyle(
                                    fontSize: 14.r,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                                value: widget.selectedAddons[addon],
                                onChanged: (bool? value) {
                                  setState(() {
                                    widget.selectedAddons[addon] = value!;
                                  });
                                });
                          }),
                    )
                  ],
                ),
              ),

              //buttons > add to cart
              MyButton(
                  onTap: () => addTocart(widget.food, widget.selectedAddons),
                  text: 'Add to Cart'),
              //

              25.verticalSpace,
            ],
          ),
        )),
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: EdgeInsets.only(left: 20.r),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  shape: BoxShape.circle),
              child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios_rounded)),
            ),
          ),
        )
      ],
    );
  }
}
