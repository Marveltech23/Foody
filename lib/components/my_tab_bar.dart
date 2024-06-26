import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/models/food.dart';
import 'package:foody/themes/textutils.dart';

class MytabBar extends StatelessWidget {
  final TabController tabController;

  const MytabBar({super.key, required this.tabController});

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    var bs = TextUtils.bodySmall(context);
    var bb = TextUtils.bodyLarge(context);
    var bm = TextUtils.bodyMedium(context);
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: _buildCategoryTabs(),
        labelStyle: bs.copyWith(fontSize: 7.r, fontWeight: FontWeight.w200),
      ),
    );
  }
}
