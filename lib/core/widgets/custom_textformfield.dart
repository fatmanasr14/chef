import 'package:chefapp/core/uitls/app_color.dart';
import 'package:flutter/material.dart';

class CustomTextformfield extends StatelessWidget {
  const CustomTextformfield({
    Key? key,
    this.controller,  // Removed required
    this.hint = '',    // Set a default value
    this.label = '',   // Set a default value
    this.validate,
    this.isPassword = false,
    this.icon = Icons.text_fields,  // Set a default icon
    this.suffixIcononPressed,
    this.c1=Colors.black,
    
  }) : super(key: key);

  final TextEditingController? controller;  // Made nullable
  final String hint;
  final String label;
  final Color c1;
  final String? Function(String?)? validate;
  final bool isPassword;
  final IconData icon;
  final VoidCallback? suffixIcononPressed;
  

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Color.fromARGB(255, 3, 3, 3)),
      controller: controller,
      cursorColor: const Color.fromARGB(156, 58, 88, 121),
      validator: validate,
      obscureText: isPassword,
      
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          suffixIcon:
              IconButton(onPressed: suffixIcononPressed, icon: Icon(icon,color: c1,)),
          // Remove labelText if not needed
        labelText: label.isEmpty ? null : label, // Make label optional
        floatingLabelBehavior: FloatingLabelBehavior.never, // Prevent label from floating
         
          labelStyle: TextStyle(color: c1, fontSize: 16),
          hintText: hint,hintStyle: TextStyle(color: appcolor.black)),
    );
  }
}
