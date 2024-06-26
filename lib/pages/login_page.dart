import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/components/my_buttom.dart';
import 'package:foody/components/my_textfield.dart';
import 'package:foody/pages/home_pages.dart';
import 'package:foody/services/auth/auth_service.dart';
import 'package:foody/themes/textutils.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

TextEditingController emailcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  void login() async {
    final _authService = AuthService();
//Navigate to home page
    try {
      await _authService.signInWithEmailPassword(
          emailcontroller.text, passwordcontroller.text);
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(e.toString()),
              ));
    }
  }

  void forgotPw() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Theme.of(context).colorScheme.background,
              title: const Text('User tapped forgot password '),
            ));
  }

  @override
  Widget build(BuildContext context) {
    var bs = TextUtils.bodySmall(context);
    var bb = TextUtils.bodyLarge(context);
    var bm = TextUtils.bodyMedium(context);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100.sp,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            10.verticalSpace,

            Text(
              "Food Delivery App",
              style: bb.copyWith(),
            ),
            20.verticalSpace,
            // ema il textfield
            MyTextfield(
                controller: emailcontroller,
                hintText: "Email",
                obscuretext: false),
            10.verticalSpace,

            // password textfield
            MyTextfield(
                controller: passwordcontroller,
                hintText: "Password",
                obscuretext: true),

            // sign in button
            25.verticalSpace,
            MyButton(text: "Login", onTap: login),

            // not a member? register now
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 14.r),
                ),
                4.horizontalSpace,
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register now",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.r),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
