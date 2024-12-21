import 'package:ar_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomPasswordTextField extends StatefulWidget {
  final String textFieldName;
  final String hintText;
  final TextEditingController? textEditingController;

  const CustomPasswordTextField({
    super.key,
    required this.textFieldName,
    required this.hintText, this.textEditingController,
  });

  @override
  _CustomPasswordTextFieldState createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          widget.textFieldName,
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
          controller: widget.textEditingController,
          cursorColor: AppColors.primaryColor,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.secondaryColor,
          ),
          obscureText: _isObscured,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(
              fontWeight: FontWeight.w600,
              color: AppColors.textFieldHintTextColor,
            ),
            filled: true,
            fillColor: AppColors.textFieldBgColor,
            contentPadding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 12,
            ),
            prefixIcon: Icon(
              Icons.lock,
              color: AppColors.prefixIconColor,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _isObscured ? Icons.visibility_off : Icons.visibility,
                color: AppColors.suffixIconColor,
              ),
              onPressed: () {
                setState(() {
                  _isObscured = !_isObscured;
                });
              },
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: AppColors.textFieldBorderColor,
                width: 0.8,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: AppColors.textFieldBorderColor,
                width: 1,
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
