import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/components/my_drawer_tile.dart';
import 'package:foody/pages/settings_pages.dart';
import 'package:foody/services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock,
              size: 80.sp,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          // home list tile
          MyDrawerTile(
            text: 'H O M E',
            onTap: () => Navigator.pop(context),
            icon: Icons.home,
          ),
//settings
          MyDrawerTile(
            text: 'S E T T I N G S ',
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsPage()));
            },
            icon: Icons.settings,
          ),
          const Spacer(),
          MyDrawerTile(
            text: ' L O G O U T ',
            onTap: () {
              logout();
              Navigator.pop(context);
            },
            icon: Icons.logout,
          ),

          25.verticalSpace,
        ],
      ),
    );
  }
}
