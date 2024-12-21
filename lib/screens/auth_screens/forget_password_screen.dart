import 'package:ar_app/constants/colors.dart';
import 'package:ar_app/widgets/btns/custom_auth_title_sub_title.dart';
import 'package:ar_app/widgets/btns/custom_filled_btn.dart';
import 'package:ar_app/widgets/text_fields/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomAuthTitleSubTitle(
                titleText: "Forget Password?",
                subTitleText: "No worries, we'll send you resent instructions.",
              ),

              const SizedBox(
                height: 50,
              ),

              /// email text field
              CustomTextField(
                textFieldName: "Email",
                hintText: "Enter email address",
                textInputType: TextInputType.emailAddress,
                prefixIconData: Icons.email,
              ),

              const SizedBox(
                height: 50,
              ),

              /// send  in btn
              CustomFilledBtn(
                onTap: () {},
                btnTitle: "verify email",
              ),
              const SizedBox(
                height: 30,
              ),

              /// back to login btn
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: AppColors.prefixIconColor,
                      size: 19,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Back to Login",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        color: AppColors.prefixIconColor,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
