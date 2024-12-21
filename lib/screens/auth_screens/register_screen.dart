import 'package:ar_app/constants/colors.dart';
import 'package:ar_app/screens/auth_screens/login_screen.dart';
import 'package:ar_app/screens/bottom_nav_bar.dart';
import 'package:ar_app/widgets/btns/custom_auth_title_sub_title.dart';
import 'package:ar_app/widgets/btns/custom_filled_btn.dart';
import 'package:ar_app/widgets/btns/custom_neo_pop_btn.dart';
import 'package:ar_app/widgets/btns/custom_outlined_btn.dart';
import 'package:ar_app/widgets/custom_auth_footer.dart';
import 'package:ar_app/widgets/text_fields/custom_password_text_field.dart';
import 'package:ar_app/widgets/text_fields/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: EdgeInsets.only(
            top: 20,
            left: 20,
            bottom: 20,
            right: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAuthTitleSubTitle(
                titleText: "Create an account",
                subTitleText: "Welcome please enter your details",
              ),

              const SizedBox(
                height: 20,
              ),

              /// name text field
              CustomTextField(
                textFieldName: "Name",
                hintText: "Enter user name",
                textInputType: TextInputType.name,
                prefixIconData: Icons.person,
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
                height: 50,
              ),

              /// sign up btn
              CustomNeoPopBtn(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return BottomNavBar();
                    }));
                  },
                  btnTitle: "Sign Up"),

              const Spacer(
                flex: 1,
              ),

              CustomAuthFooter(
                descriptionText: "Already have an account?",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ));
                },
                txtBtnTitle: "Log In",
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
