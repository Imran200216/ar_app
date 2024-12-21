import 'package:ar_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String textFieldName;
  final String hintText;
  final TextInputType textInputType;
  final IconData prefixIconData;
  final TextEditingController? textEditingController;

  const CustomTextField({
    super.key,
    required this.textFieldName,
    required this.hintText,
    required this.textInputType,
    required this.prefixIconData, this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          textFieldName,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: AppColors.textTitleColor,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        TextField(
          controller:textEditingController,
          cursorColor: AppColors.primaryColor,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.secondaryColor,
          ),
          keyboardType: textInputType,
          decoration: InputDecoration(
            prefixIcon: Icon(
              prefixIconData,
              color: AppColors.prefixIconColor,
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              fontWeight: FontWeight.w600,
              color: AppColors.textFieldHintTextColor,
            ),
            filled: true,
            fillColor: AppColors.textFieldBgColor,
            contentPadding: EdgeInsets.symmetric(
              vertical: 10, // Reduce the vertical padding
              horizontal: 12, // Horizontal padding for better alignment
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: AppColors.textFieldBorderColor,
                width: 0.8, // Border width
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: AppColors.textFieldBorderColor,
                width: 1, // Border width when focused
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ],
    );
  }
}
