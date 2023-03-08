import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:aakarfoundry/colors.dart';

enum ButtonSize { large, small }

enum Type { primary, secondary, outlined }

class LoginButton extends StatelessWidget {
  final ButtonSize size;
  final Type type;

  const LoginButton({
    super.key,
    this.type = Type.primary,
    this.size = ButtonSize.large,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: size == ButtonSize.large
            ? EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0)
            : EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          border: type == Type.outlined ? Border.all(width: 2.0) : null,
          color: getColor(type),
        ),
        child: Text(
          "Login",
          style: TextStyle(
            color: type == Type.primary
                ? Colorselect.bgLight
                : Colorselect.primaryColor,
            fontSize: size == ButtonSize.large ? 16.0 : 14.0,
            fontWeight:
                size == ButtonSize.large ? FontWeight.bold : FontWeight.w500,
          ),
        ));
  }
}

Color getColor(Type type) {
  if (type == Type.primary) {
    return Colorselect.primaryColor;
  } else if (type == Type.secondary) {
    return Colorselect.secondaryColor;
  } else {
    return Colors.white;
  }
}
