import 'package:ar_app/constants/colors.dart';
import 'package:ar_app/screens/auth_screens/forget_password_screen.dart';
import 'package:ar_app/screens/auth_screens/register_screen.dart';
import 'package:ar_app/widgets/btns/custom_auth_title_sub_title.dart';
import 'package:ar_app/widgets/btns/custom_neo_pop_btn.dart';
import 'package:ar_app/widgets/custom_auth_footer.dart';
import 'package:ar_app/widgets/text_fields/custom_password_text_field.dart';
import 'package:ar_app/widgets/text_fields/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAuthTitleSubTitle(
                titleText: "Login to your account",
                subTitleText: "Welcome back, Please enter your details",
              ),

              const SizedBox(
                height: 20,
              ),

              /// email text field
              CustomTextField(
                textFieldName: "Email",
                hintText: "Enter email address",
                textInputType: TextInputType.emailAddress,
                prefixIconData: Icons.email,
              ),

              const SizedBox(
                height: 20,
              ),

              /// password text field
              CustomPasswordTextField(
                textFieldName: "Password",
                hintText: "Enter password",
              ),

              const SizedBox(
                height: 20,
              ),

              /// forget password btn
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ForgetPasswordScreen();
                    }));
                  },
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.secondaryColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              /// login btn
              CustomNeoPopBtn(onTap: () {}, btnTitle: "Login"),

              const Spacer(
                flex: 1,
              ),

              CustomAuthFooter(
                descriptionText: "Don't have an account?",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return RegisterScreen();
                    },
                  ));
                },
                txtBtnTitle: "Sign Up",
              ),

              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
