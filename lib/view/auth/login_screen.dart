import 'package:e_commerce_app/core/view_model/auth_view_model.dart';
import 'package:e_commerce_app/view/constance.dart';
import 'package:e_commerce_app/view/widgets/custom_button.dart';
import 'package:e_commerce_app/view/widgets/custom_button_social.dart';
import 'package:e_commerce_app/view/widgets/custom_text.dart';
import 'package:e_commerce_app/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          right: 10,
          left: 10,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Welcome',
                  size: 30,
                ),
                CustomText(
                  text: 'Sign Up',
                  size: 18,
                  color: primaryColor,
                ),
              ],
            ),
            CustomText(
              text: 'Sign in to Continue',
              size: 14,
              color: Colors.grey,
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextFormField(
              text: 'Email',
              hint: 'example@gmail.com',
              onSave: (value) {},
              validator: (value) {},
            ),
            SizedBox(
              height: 40,
            ),
            CustomTextFormField(
              text: 'Password',
              hint: '***********',
              onSave: (value) {},
              validator: (value) {},
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              text: 'Forgot Password',
              size: 14,
              alignment: Alignment.topRight,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              text: 'Sign In',
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              text: '-OR-',
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButtonSocial(
              text: 'Sign In With Facebook',
              imageName: 'assets/images/facebook.png',
            ),
            SizedBox(
              height: 20,
            ),
            CustomButtonSocial(
              text: 'Sign In With Google',
              imageName: 'assets/images/google.png',
              onPressed: () {
                controller.googleSignInMethod();
              },
            ),
          ],
        ),
      ),
    );
  }
}
