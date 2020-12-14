import 'package:ecommerce_app/core/view_model/auth_view_model.dart';
import 'package:ecommerce_app/view/widgets/custom_buttom.dart';
import 'package:ecommerce_app/view/widgets/custom_button_social.dart';
import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:ecommerce_app/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constance.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          right: 20,
          left: 20,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Welcome,",
                  fontSize: 30,
                ),
                CustomText(
                  text: "Sign Up",
                  color: primaryColor,
                  fontSize: 18,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
              text: 'Sign in to Continue',
              fontSize: 14,
              color: Colors.grey,
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextFormField(
              text: 'Email',
              hint: 'iamdavid@gmail.com',
              onSave: (value) {},
              validator: (value) {},
            ),
            SizedBox(
              height: 40,
            ),
            CustomTextFormField(
              text: 'Password',
              hint: '**********',
              onSave: (value) {},
              validator: (value) {},
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              text: 'Forgot Password?',
              fontSize: 14,
              alignment: Alignment.topRight,
            ),
            SizedBox(
              height: 15,
            ),
            CustomButton(
              onPress: () {},
              text: 'SIGN IN',
            ),
            SizedBox(
              height: 40,
            ),
            CustomText(
              text: '-OR-',
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 40,
            ),
            CustomButtonSocial(
              text: 'Sign In with Facebook',
              onPress: () {
                controller.facebookSignInMethod();
              },
              imageName: 'assets/images/facebook.png',
            ),
            SizedBox(
              height: 40,
            ),
            CustomButtonSocial(
              text: 'Sign In with Google',
              onPress: () {
                controller.googleSignInMethod();
              },
              imageName: 'assets/images/google.png',
            ),
          ],
        ),
      ),
    );
  }
}
