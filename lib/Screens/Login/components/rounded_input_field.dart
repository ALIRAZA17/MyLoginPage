import 'package:flutter/material.dart';
import 'text_field_container.dart';

import '../../../constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty || !value.contains('@')) {
            return 'Please enter a valid email address.';
          }
          return null;
        },
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: "Your Email",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
