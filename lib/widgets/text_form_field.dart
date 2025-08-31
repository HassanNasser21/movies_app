import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app/constants/app_theme.dart';

class CustomizeTextFormField extends StatefulWidget {
  final String defaultText;
  final String iconName;

  // final String name;
  final IconData icon;

  CustomizeTextFormField({
    super.key,
    required this.iconName,
    // required this.name,
    required this.icon,
    required this.defaultText,
  });

  @override
  State<CustomizeTextFormField> createState() => _CustomizeTextFormFieldState();
}

class _CustomizeTextFormFieldState extends State<CustomizeTextFormField> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.defaultText);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: AppTheme.white,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
        color: AppTheme.white,
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(widget.icon, color: AppTheme.white, size: 30),
        // prefixIcon: SvgPicture.asset('assets/icons/${widget.iconName}.svg'),
        filled: true,
        fillColor: AppTheme.grey,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: AppTheme.grey),
        ),
      ),
    );
  }
}
