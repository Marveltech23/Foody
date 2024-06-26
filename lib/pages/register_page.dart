import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/components/my_buttom.dart';
import 'package:foody/components/my_textfield.dart';
import 'package:foody/services/auth/auth_service.dart';
import 'package:foody/themes/textutils.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordcontroller = TextEditingController();

  void register() async {
    final _authService = AuthService();

//try Creating user
    if (passwordController.text == confirmPasswordcontroller.text) {
      try {
        await _authService.signUpWithEmailPassword(
          emailController.text,
          passwordController.text,
        );
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(e.toString()),
                ));
      }
    } else {
      showDialog(
          context: context,
          builder: (context) => const AlertDialog(
                title: Text("Pass word dont match!"),
              ));
    }
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
              "Let's create an account for you",
              style: bb.copyWith(),
            ),
            20.verticalSpace,
            // ema il textfield
            MyTextfield(
                controller: emailController,
                hintText: "Email",
                obscuretext: false),
            10.verticalSpace,

            // password textfield
            MyTextfield(
                controller: passwordController,
                hintText: "Password",
                obscuretext: true),

            10.verticalSpace,

            //  confim password textfield
            MyTextfield(
                controller: confirmPasswordcontroller,
                hintText: " Confirm Password",
                obscuretext: true),

            // sign in button
            25.verticalSpace,
            MyButton(text: "Sign Up", onTap: register),

            // not a member? register now
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "already have an account?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 14.r),
                ),
                4.horizontalSpace,
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login now",
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
